#!/usr/bin/env bash
set -euo pipefail

BOOTSTRAP_LIB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOTSTRAP_SCRIPTS_DIR="$(cd "${BOOTSTRAP_LIB_DIR}/.." && pwd)"
BOOTSTRAP_REPO_ROOT="$(cd "${BOOTSTRAP_LIB_DIR}/../.." && pwd)"

BOOTSTRAP_REQUIRED_COMMANDS=(docker kubectl k3d helm terraform kubeseal git)

bootstrap::require_environment() {
  local provided="${1:-}"
  local default_env="${2:-}"
  local env

  if [[ -n "$provided" ]]; then
    env="$provided"
  elif [[ -n "$default_env" ]]; then
    env="$default_env"
  else
    echo "Usage: ${0##*/} <environment>" >&2
    return 1
  fi

  declare -g ENVIRONMENT="$env"
  declare -g CLUSTER_NAME="vyking-${env}"
  declare -g ARGO_NS="argocd-${env}"
  declare -g BOOTSTRAP_KUBECONFIG="$HOME/.kube/${CLUSTER_NAME}-config"
}

bootstrap::ensure_dependencies() {
  local -a commands=()

  if (( $# == 0 )); then
    commands=("${BOOTSTRAP_REQUIRED_COMMANDS[@]}")
  else
    commands=("$@")
  fi

  local -a missing=()
  for cmd in "${commands[@]}"; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
      missing+=("$cmd")
    fi
  done

  if (( ${#missing[@]} > 0 )); then
    echo "❌ Missing required commands: ${missing[*]}" >&2
    echo "   Please run ./scripts/setup-tools.sh first." >&2
    return 1
  fi

  echo "✅ All dependencies found"
}

bootstrap::load_secrets() {
  local secrets_file="${1:-${BOOTSTRAP_SCRIPTS_DIR}/secrets.env}"

  if [[ ! -f "$secrets_file" ]]; then
    echo "❌ ${secrets_file} not found. Please create it first." >&2
    return 1
  fi

  # shellcheck source=/dev/null
  source "$secrets_file"
}

bootstrap::create_cluster() {
  local env="${1:-${ENVIRONMENT:-}}"

  if [[ -z "${env}" ]]; then
    echo "bootstrap::create_cluster requires ENVIRONMENT to be set" >&2
    return 1
  fi

  local cluster="vyking-${env}"
  local -a ports=()
  if [[ "$env" == "prod" ]]; then
    ports=(-p "8080:80@loadbalancer" -p "8443:443@loadbalancer")
  fi

  echo "==> Deleting existing cluster '${cluster}' (if any)..."
  k3d cluster delete "$cluster" || true

  echo "==> Creating new cluster: ${cluster}"
  k3d cluster create "$cluster" \
    --servers 1 \
    --agents 2 \
    "${ports[@]}"

  echo "==> Exporting kubeconfig to ~/.kube/${cluster}-config"
  mkdir -p ~/.kube
  k3d kubeconfig get "$cluster" > "$HOME/.kube/${cluster}-config"
  chmod 600 "$HOME/.kube/${cluster}-config"
  export KUBECONFIG="$HOME/.kube/${cluster}-config"

  echo "==> Cluster info:"
  kubectl cluster-info
  kubectl get nodes -o wide

  echo "==> Installing SealedSecrets controller"
  kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.26.0/controller.yaml

  echo "==> Waiting for SealedSecrets controller to be ready..."
  kubectl rollout status deployment sealed-secrets-controller -n kube-system --timeout=120s

  echo "==> Cluster ${cluster} is ready with SealedSecrets installed."
}

bootstrap::generate_sealed_secrets() {
  local -n _out=$1
  local env="${2:-${ENVIRONMENT:-}}"

  if [[ -z "${env}" ]]; then
    echo "bootstrap::generate_sealed_secrets requires ENVIRONMENT to be set" >&2
    return 1
  fi

  local sealed_dir="${BOOTSTRAP_REPO_ROOT}/infrastructure/sealed"
  mkdir -p "$sealed_dir"

  local mysql_secret_name="mysql-${env}-secret"
  local mysql_credentials_name="mysql-credentials-${env}"
  local backend_ns="backend-${env}"
  local mysql_ns="mysql-${env}"
  local host="mysql.mysql-${env}.svc.cluster.local"

  local db_user db_pass db_name db_root_pass
  case "$env" in
    dev)
      db_user="${DEV_DB_USER:?DEV_DB_USER not set in secrets}";
      db_pass="${DEV_DB_PASS:?DEV_DB_PASS not set in secrets}";
      db_name="${DEV_DB_NAME:?DEV_DB_NAME not set in secrets}";
      db_root_pass="${DEV_DB_ROOT_PASS:?DEV_DB_ROOT_PASS not set in secrets}";
      ;;
    prod)
      db_user="${PROD_DB_USER:?PROD_DB_USER not set in secrets}";
      db_pass="${PROD_DB_PASS:?PROD_DB_PASS not set in secrets}";
      db_name="${PROD_DB_NAME:?PROD_DB_NAME not set in secrets}";
      db_root_pass="${PROD_DB_ROOT_PASS:?PROD_DB_ROOT_PASS not set in secrets}";
      ;;
    *)
      echo "Unsupported environment '${env}' for sealed secret generation" >&2
      return 1
      ;;
  esac

  local credentials_file="${sealed_dir}/${mysql_credentials_name}.yaml"
  local secret_file="${sealed_dir}/${mysql_secret_name}.yaml"

  echo "==> Generating sealed secrets for ${env}"

  kubectl create secret generic "${mysql_credentials_name}" \
    -n "${backend_ns}" \
    --from-literal=username="${db_user}" \
    --from-literal=password="${db_pass}" \
    --from-literal=database="${db_name}" \
    --from-literal=host="${host}" \
    --from-literal=port=3306 \
    --dry-run=client -o yaml | kubeseal -o yaml > "${credentials_file}"

  kubectl create secret generic "${mysql_secret_name}" \
    -n "${mysql_ns}" \
    --from-literal=mysql-root-password="${db_root_pass}" \
    --from-literal=mysql-username="${db_user}" \
    --from-literal=mysql-password="${db_pass}" \
    --from-literal=mysql-database="${db_name}" \
    --dry-run=client -o yaml | kubeseal -o yaml > "${secret_file}"

  echo "✅ SealedSecrets generated for ${env}"

  _out=("${credentials_file}" "${secret_file}")
}

bootstrap::sealed_secret_commit_message() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "${env}" ]]; then
    echo "bootstrap::sealed_secret_commit_message requires ENVIRONMENT to be set" >&2
    return 1
  fi
  echo "chore: update sealed secrets for ${env} environment [auto-generated $(date +%Y%m%d-%H%M%S)]"
}

bootstrap::git_safe_commit() {
  local commit_message="$1"
  shift || true
  local -a files=("$@")

  if (( ${#files[@]} == 0 )); then
    echo "✅ No sealed secret files to commit"
    return 0
  fi

  local previous_dir
  previous_dir="$(pwd)"
  cd "$BOOTSTRAP_REPO_ROOT"

  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "⚠️  Not in a git repository. Skipping git operations."
    cd "$previous_dir"
    return 0
  fi

  if [[ -z "$(git config user.name)" ]]; then
    git config --local user.name "DevOps Bot"
  fi
  if [[ -z "$(git config user.email)" ]]; then
    git config --local user.email "devops-bot@vyking.io"
  fi

  git add "${files[@]}"

  if git diff --staged --quiet; then
    echo "✅ No changes in sealed secrets to commit"
    cd "$previous_dir"
    return 0
  fi

  if git commit -m "$commit_message" --no-verify; then
    echo "✅ Sealed secrets committed locally"

    if git push --dry-run origin HEAD >/dev/null 2>&1; then
      if git push origin HEAD; then
        echo "✅ Sealed secrets pushed to remote repository"
      else
        local push_status=$?
        echo "⚠️  Failed to push to remote. Error code: ${push_status}"
        echo "The sealed secrets have been committed locally but not pushed to remote."
        echo "Please push manually with: git push origin HEAD"
      fi
    else
      echo "⚠️  No push access or remote not configured. Committed locally only."
      echo "To configure remote: git remote add origin <your-repo-url>"
      echo "To push manually: git push -u origin HEAD"
    fi
  else
    echo "❌ Failed to commit sealed secrets. Continuing without git commit..."
  fi

  cd "$previous_dir"
}

bootstrap::build_and_import_images() {
  local env="${1:-${ENVIRONMENT:-}}"
  local cluster="${2:-${CLUSTER_NAME:-}}"
  local nginx_base="${3:-nginx:1.25-alpine}"
  local python_base="${4:-python:3.11-slim-bullseye}"

  if [[ -z "$env" || -z "$cluster" ]]; then
    echo "bootstrap::build_and_import_images requires ENVIRONMENT and CLUSTER_NAME" >&2
    return 1
  fi

  local fe_image="vyking-frontend:${env}"
  local be_image="vyking-backend:${env}"

  echo "==> Pulling base images"
  docker pull "$nginx_base"
  docker pull "$python_base"

  echo "==> Building images with exact names for ArgoCD"
  docker build --no-cache \
    --build-arg BASE_IMAGE="$nginx_base" \
    --build-arg ENVIRONMENT="$env" \
    -t "$fe_image" "${BOOTSTRAP_REPO_ROOT}/applications/frontend/app"

  docker build --no-cache \
    --build-arg BASE_IMAGE="$python_base" \
    --build-arg ENVIRONMENT="$env" \
    -t "$be_image" "${BOOTSTRAP_REPO_ROOT}/applications/backend/app"

  echo "==> Importing into k3d cluster: ${cluster}"
  k3d image import -c "$cluster" "$fe_image" "$be_image" --keep-tools
  echo "✅ Images imported to k3d with names: ${fe_image}, ${be_image}"

  declare -g FRONTEND_IMAGE="$fe_image"
  declare -g BACKEND_IMAGE="$be_image"
}

bootstrap::ensure_local_image_policy() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::ensure_local_image_policy requires ENVIRONMENT" >&2
    return 1
  fi

  echo "==> Ensuring pods use local images with IfNotPresent policy"
  kubectl patch deployment "backend-${env}" -n "backend-${env}" \
    -p '{"spec":{"template":{"spec":{"containers":[{"name":"backend","imagePullPolicy":"IfNotPresent"}]}}}}' || true

  kubectl patch deployment "frontend-${env}" -n "frontend-${env}" \
    -p '{"spec":{"template":{"spec":{"containers":[{"name":"frontend","imagePullPolicy":"IfNotPresent"}]}}}}' || true

  echo "✅ Image pull policies set to IfNotPresent"
}

bootstrap::restart_workloads() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::restart_workloads requires ENVIRONMENT" >&2
    return 1
  fi

  echo "==> Restarting deployments to pick up new local images"
  kubectl rollout restart deployment "backend-${env}" -n "backend-${env}" || true
  kubectl rollout restart deployment "frontend-${env}" -n "frontend-${env}" || true

  echo "✅ Deployments restarted in namespace(s) ${env}"
}

bootstrap::terraform_apply() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::terraform_apply requires ENVIRONMENT" >&2
    return 1
  fi

  local tf_dir="${BOOTSTRAP_REPO_ROOT}/terraform"
  local tfvars_file="${tf_dir}/env/${env}.tfvars"

  pushd "$tf_dir" >/dev/null

  terraform init -input=false
  if [[ -f "$tfvars_file" ]]; then
    terraform apply -var-file="$tfvars_file" -target=module.argocd -auto-approve
  else
    terraform apply -target=module.argocd -auto-approve
  fi

  echo "==> Waiting for ArgoCD Application CRD"
  kubectl wait --for=condition=Established crd/applications.argoproj.io --timeout=120s || {
    echo "❌ Application CRD not ready, ArgoCD might have failed to install" >&2
    popd >/dev/null
    return 1
  }

  if [[ -f "$tfvars_file" ]]; then
    terraform apply -var-file="$tfvars_file" -target=module.infra -auto-approve
    terraform apply -var-file="$tfvars_file" -target=module.applications -auto-approve
  else
    terraform apply -target=module.infra -auto-approve
    terraform apply -target=module.applications -auto-approve
  fi

  popd >/dev/null
}

bootstrap::port_forward_pid_file() {
  local env="${1:-${ENVIRONMENT:-}}"
  local name="${2:?port-forward name required}"

  if [[ -z "$env" ]]; then
    echo "bootstrap::port_forward_pid_file requires ENVIRONMENT" >&2
    return 1
  fi

  echo "/tmp/${name}-port-forward-${env}.pid"
}

bootstrap::argocd_login_info() {
  local env="${1:-${ENVIRONMENT:-}}"
  local ns="${2:-${ARGO_NS:-}}"

  if [[ -z "$env" || -z "$ns" ]]; then
    echo "bootstrap::argocd_login_info requires ENVIRONMENT and ARGO_NS" >&2
    return 1
  fi

  echo "==> Argo CD username: admin"
  echo -n "==> Argo CD admin password: "
  kubectl -n "$ns" get secret argocd-initial-admin-secret \
    -o jsonpath="{.data.password}" | base64 -d && echo

  kubectl port-forward svc/argocd-server -n "$ns" 8080:443 >/dev/null 2>&1 &
  local pf_pid=$!
  local pf_file
  pf_file="$(bootstrap::port_forward_pid_file "$env" "argocd")"
  echo "$pf_pid" > "$pf_file"

  echo "=== ✅ Environment ${env} ready ==="
  echo "==> Argo CD UI: http://localhost:8080"
  echo "==> Stop port-forward: kill \\$(cat ${pf_file})"
}

bootstrap::start_ingress_port_forward() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::start_ingress_port_forward requires ENVIRONMENT" >&2
    return 1
  fi

  echo "==> Setting up ingress-nginx port-forward"
  kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8443:443 >/dev/null 2>&1 &
  local pf_pid=$!
  local pf_file
  pf_file="$(bootstrap::port_forward_pid_file "$env" "ingress")"
  echo "$pf_pid" > "$pf_file"

  echo "✅ Ingress-NGINX available at https://frontend-${env}.local:8443"
  echo "==> Stop port-forward: kill \\$(cat ${pf_file})"
}

bootstrap::stop_port_forward() {
  local env="${1:-${ENVIRONMENT:-}}"
  local name="${2:?port-forward name required}"

  if [[ -z "$env" ]]; then
    echo "bootstrap::stop_port_forward requires ENVIRONMENT" >&2
    return 1
  fi

  local pf_file
  pf_file="$(bootstrap::port_forward_pid_file "$env" "$name")"

  if [[ -f "$pf_file" ]]; then
    local pf_pid
    pf_pid="$(cat "$pf_file")"
    if ps -p "$pf_pid" >/dev/null 2>&1; then
      kill "$pf_pid" || true
    fi
    rm -f "$pf_file"
    echo "==> Stopped ${name} port-forward (PID: ${pf_pid})"
  fi
}

bootstrap::stop_all_port_forwards() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::stop_all_port_forwards requires ENVIRONMENT" >&2
    return 1
  fi

  bootstrap::stop_port_forward "$env" "argocd" || true
  bootstrap::stop_port_forward "$env" "ingress" || true
}

bootstrap::print_mysql_info() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::print_mysql_info requires ENVIRONMENT" >&2
    return 1
  fi

  local secret_name="mysql-${env}-secret"
  local mysql_ns="mysql-${env}"

  echo "==> Resolving MySQL connection details..."

  local mysql_user mysql_pass mysql_db
  mysql_user=$(kubectl get secret "$secret_name" -n "$mysql_ns" -o jsonpath="{.data.username}" | base64 -d)
  mysql_pass=$(kubectl get secret "$secret_name" -n "$mysql_ns" -o jsonpath="{.data.password}" | base64 -d)
  mysql_db=$(kubectl get secret "$secret_name" -n "$mysql_ns" -o jsonpath="{.data.database}" | base64 -d)

  local mysql_host="mysql-${env}.${mysql_ns}.svc.cluster.local"
  local mysql_port=3306

  echo "✅ MySQL connection details resolved:"
  echo "    Host: ${mysql_host}"
  echo "    User: ${mysql_user}"
  echo "    Database: ${mysql_db}"
  echo
  echo "==> To connect, run:"
  echo "kubectl run -it --rm mysql-client --image=mysql:8.0 --restart=Never -- \\
  mysql -h ${mysql_host} -P ${mysql_port} -u${mysql_user} -p${mysql_pass} ${mysql_db}"
}

bootstrap::run_tests() {
  local env="${1:-${ENVIRONMENT:-}}"
  if [[ -z "$env" ]]; then
    echo "bootstrap::run_tests requires ENVIRONMENT" >&2
    return 1
  fi

  local timestamp="$(date '+%Y-%m-%d-%H-%M-%S')"
  local test_results_dir="${BOOTSTRAP_REPO_ROOT}/test-results"
  local report_file="${test_results_dir}/tests-results-${env}-${timestamp}"

  mkdir -p "$test_results_dir"

  "${BOOTSTRAP_SCRIPTS_DIR}/tests.sh" "$env" 2>&1 | tee "${report_file}.txt" > "${report_file}.md"

  echo "✅ Test results written to ${report_file}"
}

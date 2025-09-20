#!/bin/bash
set -euo pipefail

chmod +x scripts/*.sh

ENVIRONMENT=$1
if [ -z "$ENVIRONMENT" ]; then
  echo "Usage: $0 <dev|prod>"
  exit 1
fi

CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "=== 🚀 Bootstrapping environment: $ENVIRONMENT ==="
echo "DEBUG: ENVIRONMENT is set to: $ENVIRONMENT"

# -------------------------
# 0. Verify dependencies
# -------------------------
for cmd in docker kubectl k3d helm terraform kubeseal git; do
  if ! command -v $cmd &> /dev/null; then
    echo "❌ $cmd is not installed. Please run ./scripts/setup-tools.sh first."
    exit 1
  fi
done
echo "✅ All dependencies found"

# -------------------------
# 1. Load secrets file
# -------------------------
if [[ -f "./scripts/secrets.env" ]]; then
  source ./scripts/secrets.env
else
  echo "❌ ./scripts/secrets.env not found. Please create it first."
  exit 1
fi

# -------------------------
# 2. Create cluster (with SealedSecrets)
# -------------------------
./scripts/cluster.sh "$ENVIRONMENT"

# -------------------------
# 3. Generate SealedSecrets
# -------------------------

echo "==> Generating sealed secrets for $ENVIRONMENT"

mkdir -p infrastructure/sealed

MYSQL_SECRET_NAME="mysql-${ENVIRONMENT}-secret"
MYSQL_CRED_NAME="mysql-credentials-${ENVIRONMENT}"

case "$ENVIRONMENT" in
  dev)
    kubectl create secret generic ${MYSQL_CRED_NAME} \
      -n backend-${ENVIRONMENT} \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_CRED_NAME}.yaml

    kubectl create secret generic ${MYSQL_SECRET_NAME} \
      -n mysql-${ENVIRONMENT} \
      --from-literal=rootPassword=$DEV_DB_ROOT_PASS \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml
    ;;
  prod)
    kubectl create secret generic ${MYSQL_CRED_NAME} \
      -n backend-${ENVIRONMENT} \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_CRED_NAME}.yaml

    kubectl create secret generic ${MYSQL_SECRET_NAME} \
      -n mysql-${ENVIRONMENT} \
      --from-literal=rootPassword=$PROD_DB_ROOT_PASS \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --from-literal=host=mysql.mysql-${ENVIRONMENT}.svc.cluster.local \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml
    ;;
esac

echo "✅ SealedSecrets generated for $ENVIRONMENT"

# -------------------------
# 3.1. Secure Git commit & push of sealed secrets
# -------------------------
echo "==> Securely committing sealed secrets to Git"

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

# Safety check: ensure we're in a git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "⚠️  Not in a git repository. Skipping git operations."
    cd - > /dev/null
else
    # Configure git safely (only if not already configured)
    if [ -z "$(git config user.name)" ]; then
        git config --local user.name "DevOps Bot"
    fi
    if [ -z "$(git config user.email)" ]; then
        git config --local user.email "devops-bot@vyking.io"
    fi

    # Add only the specific sealed secret files
    SEALED_FILES=(
        "infrastructure/sealed/${MYSQL_CRED_NAME}.yaml"
        "infrastructure/sealed/${MYSQL_SECRET_NAME}.yaml"
    )

    FILES_TO_ADD=()
    for file in "${SEALED_FILES[@]}"; do
        if [[ -f "$file" ]]; then
            FILES_TO_ADD+=("$file")
        fi
    done

    if [ ${#FILES_TO_ADD[@]} -eq 0 ]; then
        echo "✅ No sealed secret files to commit"
    else
        # Add files to git
        git add "${FILES_TO_ADD[@]}"

        # Check if there are changes to commit
        if git diff --staged --quiet; then
            echo "✅ No changes in sealed secrets to commit"
        else
            # Create commit with secure message (no sensitive data)
            COMMIT_MSG="chore: update sealed secrets for ${ENVIRONMENT} environment [auto-generated $(date +%Y%m%d-%H%M%S)]"

            if git commit -m "$COMMIT_MSG" --no-verify; then
                echo "✅ Sealed secrets committed locally"

                # Check if we can push (dry-run first)
                if git push --dry-run origin HEAD &> /dev/null; then
                    # Actual push with error handling
                    if git push origin HEAD; then
                        echo "✅ Sealed secrets pushed to remote repository"
                    else
                        echo "⚠️  Failed to push to remote. Error code: $?"
                        echo "The sealed secrets have been committed locally but not pushed to remote."
                        echo "Please push manually with: git push origin HEAD"
                    fi
                else
                    echo "⚠️  No push access or remote not configured. Committed locally only."
                    echo "To configure remote: git remote add origin <your-repo-url>"
                    echo "To push manually: git push -u origin HEAD"
                fi
            else
                echo "❌ Failed to commit sealed secrets. Error code: $?"
                echo "Continuing without git commit..."
            fi
        fi
    fi

    cd - > /dev/null
fi

# -------------------------
 # 4. Build & import images
 # -------------------------
 echo "==> Building & importing images for $ENVIRONMENT"

NGINX_BASE="nginx:1.25-alpine"
PYTHON_BASE="python:3.11-slim-bullseye"

FE_IMAGE="vyking-frontend:${ENVIRONMENT}"
BE_IMAGE="vyking-backend:${ENVIRONMENT}"

echo "==> Pulling base images"
docker pull "$NGINX_BASE"
docker pull "$PYTHON_BASE"

echo "==> Building images"
docker build --no-cache \
  --build-arg BASE_IMAGE="$NGINX_BASE" \
  --build-arg ENVIRONMENT="$ENVIRONMENT" \
  -t "$FE_IMAGE" ./applications/frontend/app

docker build --no-cache \
  --build-arg BASE_IMAGE="$PYTHON_BASE" \
  --build-arg ENVIRONMENT="$ENVIRONMENT" \
  -t "$BE_IMAGE" ./applications/backend/app

echo "==> Importing into k3d cluster: $CLUSTER_NAME"
k3d image import -c "$CLUSTER_NAME" "$FE_IMAGE" "$BE_IMAGE" --keep-tools
echo "✅ Images ready for $ENVIRONMENT"


# -------------------------
# 5. Terraform apply with environment values
# -------------------------
cd terraform

TFVARS_FILE="env/${ENVIRONMENT}.tfvars"

terraform init -input=false

terraform apply -var-file="$TFVARS_FILE" -target=module.argocd -auto-approve

echo "==> Waiting for ArgoCD Application CRD"
kubectl wait --for=condition=Established crd/applications.argoproj.io --timeout=120s || {
  echo "❌ Application CRD not ready, ArgoCD might have failed to install"
  exit 1
}
terraform apply -var-file="$TFVARS_FILE" -target=module.infra -auto-approve
terraform apply -var-file="$TFVARS_FILE" -target=module.applications -auto-approve

cd ..

# -------------------------
# 6. ArgoCD login info
# -------------------------
./scripts/argocd-login-info.sh "$ENVIRONMENT" "$ARGO_NS"


# -------------------------
# 7. Ingress-NGINX port-forward
# -------------------------
echo "==> Setting up ingress-nginx port-forward"

# Forward local 8443 -> ingress-nginx 443
kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8443:443 >/dev/null 2>&1 &
echo $! > "/tmp/ingress-port-forward-${ENVIRONMENT}.pid"

echo "✅ Ingress-NGINX available at https://frontend-${ENVIRONMENT}.local:8443"
echo "==> Stop port-forward: kill \$(cat /tmp/ingress-port-forward-${ENVIRONMENT}.pid)"

# -------------------------
# 8. MySQL Connection Info
# -------------------------
MYSQL_SECRET_NAME="mysql-${ENVIRONMENT}-secret"
MYSQL_NS="mysql-${ENVIRONMENT}"

echo "==> Resolving MySQL connection details..."

MYSQL_USER=$(kubectl get secret $MYSQL_SECRET_NAME -n $MYSQL_NS -o jsonpath="{.data.username}" | base64 -d)
MYSQL_PASS=$(kubectl get secret $MYSQL_SECRET_NAME -n $MYSQL_NS -o jsonpath="{.data.password}" | base64 -d)
MYSQL_DB=$(kubectl get secret $MYSQL_SECRET_NAME -n $MYSQL_NS -o jsonpath="{.data.database}" | base64 -d)

MYSQL_HOST="mysql-${ENVIRONMENT}.${MYSQL_NS}.svc.cluster.local"
MYSQL_PORT=3306

echo "✅ MySQL connection details resolved:"
echo "    Host: $MYSQL_HOST"
echo "    User: $MYSQL_USER"
echo "    Database: $MYSQL_DB"
echo ""
echo "==> To connect, run:"
echo "kubectl run -it --rm mysql-client --image=mysql:8.0 --restart=Never -- \
  mysql -h $MYSQL_HOST -P $MYSQL_PORT -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB"

echo "=== ✅ Environment $ENVIRONMENT bootstrap completed ==="


# -------------------------
# 10. Run Tests & Save Report
# -------------------------
echo "==> Running cluster tests..."
TIMESTAMP=$(date '+%Y%m%d-%H%M%S')
REPORT_FILE="tests-results-${ENVIRONMENT}-${TIMESTAMP}.md"

./scripts/tests.sh "$ENVIRONMENT" > "$REPORT_FILE" 2>&1

echo "✅ Test results written to $REPORT_FILE"

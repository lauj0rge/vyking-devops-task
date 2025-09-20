#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S %Z')"

echo "# 🧪 Cluster Test Results for \`${ENVIRONMENT}\`"
echo
echo "## 📋 Summary"
echo "- **Generated:** ${TIMESTAMP}"
echo "- **Environment:** \`${ENVIRONMENT}\`"
echo "- **Cluster Name:** \`${CLUSTER_NAME}\`"
echo "- **Argo CD Namespace:** \`${ARGO_NS}\`"
echo

declare -a NAMESPACES_FOR_ROLLOUT=()

track_namespace() {
  local ns="$1"
  for existing in "${NAMESPACES_FOR_ROLLOUT[@]}"; do
    if [[ "$existing" == "$ns" ]]; then
      return
    fi
  done
  NAMESPACES_FOR_ROLLOUT+=("$ns")
}

run_cmd() {
  local title="$1"
  shift
  local -a cmd=("$@")

  echo "### ${title}"
  echo '```bash'
  printf '+'
  for arg in "${cmd[@]}"; do
    printf ' %q' "$arg"
  done
  printf '\n'

  set +e
  "${cmd[@]}"
  local status=$?
  set -e

  if [[ $status -ne 0 ]]; then
    echo
    echo "[command failed with exit code ${status}]"
  fi

  echo '```'
  echo
}

namespace_overview() {
  local namespace="$1"

  if ! kubectl get ns "$namespace" >/dev/null 2>&1; then
    echo "❌ Namespace \`${namespace}\` not found."
    echo
    return 1
  fi

  track_namespace "$namespace"

  run_cmd "Pods" kubectl get pods -n "$namespace" -o wide
  run_cmd "Deployments" kubectl get deploy -n "$namespace" -o wide
  run_cmd "StatefulSets" kubectl get statefulset -n "$namespace" -o wide
  run_cmd "DaemonSets" kubectl get daemonset -n "$namespace" -o wide
  run_cmd "Services" kubectl get svc -n "$namespace" -o wide
  run_cmd "Ingresses" kubectl get ingress -n "$namespace"
  run_cmd "ConfigMaps" kubectl get configmap -n "$namespace"
  run_cmd "Secrets" kubectl get secret -n "$namespace"
  run_cmd "Horizontal Pod Autoscalers" kubectl get hpa -n "$namespace"
  run_cmd "Jobs" kubectl get jobs -n "$namespace"
  run_cmd "CronJobs" kubectl get cronjobs -n "$namespace"
  run_cmd "PersistentVolumeClaims" kubectl get pvc -n "$namespace"
  local events_cmd="set -o pipefail; kubectl get events -n \"$namespace\" --sort-by=.metadata.creationTimestamp | tail -n 20"
  run_cmd "Recent Events" bash -lc "$events_cmd"
  run_cmd "Resource Usage (pods)" kubectl top pods -n "$namespace"

  echo
  return 0
}

collect_resources() {
  local -n _result=$1
  local kind="$2"
  local namespace="$3"
  local query='{range .items[*]}{.metadata.name}{"\n"}{end}'

  set +e
  mapfile -t _result < <(kubectl get "$kind" -n "$namespace" -o jsonpath="$query" 2>/dev/null)
  local status=$?
  set -e

  if [[ $status -ne 0 ]]; then
    _result=()
    return
  fi

  local -a cleaned=()
  for item in "${_result[@]}"; do
    if [[ -n "$item" ]]; then
      cleaned+=("$item")
    fi
  done
  _result=("${cleaned[@]}")
}

print_rollout_statuses() {
  local printed=false

  echo "## 🚀 Workload Rollouts"

  for ns in "${NAMESPACES_FOR_ROLLOUT[@]}"; do
    if ! kubectl get ns "$ns" >/dev/null 2>&1; then
      continue
    fi

    local -a deployments=()
    local -a statefulsets=()
    local -a daemonsets=()

    collect_resources deployments deploy "$ns"
    collect_resources statefulsets statefulset "$ns"
    collect_resources daemonsets daemonset "$ns"

    if (( ${#deployments[@]} == 0 && ${#statefulsets[@]} == 0 && ${#daemonsets[@]} == 0 )); then
      continue
    fi

    printed=true
    echo "### Namespace \`${ns}\`"

    for dep in "${deployments[@]}"; do
      run_cmd "Deployment ${dep}" kubectl rollout status deploy "$dep" -n "$ns" --timeout=30s
    done

    for sts in "${statefulsets[@]}"; do
      run_cmd "StatefulSet ${sts}" kubectl rollout status statefulset "$sts" -n "$ns" --timeout=30s
    done

    for ds in "${daemonsets[@]}"; do
      run_cmd "DaemonSet ${ds}" kubectl rollout status daemonset "$ds" -n "$ns" --timeout=30s
    done

    echo
  done

  if ! $printed; then
    echo "_No rollout-capable workloads found in the selected namespaces._"
    echo
  fi
}

print_service_access() {
  local namespace="$1"
  local default_port="$2"

  if ! kubectl get ns "$namespace" >/dev/null 2>&1; then
    return
  fi

  set +e
  local svc_name
  svc_name=$(kubectl get svc -n "$namespace" -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
  local svc_status=$?
  set -e
  if [[ $svc_status -ne 0 || -z "$svc_name" ]]; then
    return
  fi

  set +e
  local svc_port
  svc_port=$(kubectl get svc "$svc_name" -n "$namespace" -o jsonpath='{.spec.ports[0].port}' 2>/dev/null)
  local port_status=$?
  set -e
  if [[ $port_status -ne 0 || -z "$svc_port" ]]; then
    svc_port="$default_port"
  fi

  echo "- **Service:** \`${svc_name}\`"
  echo "- **Namespace:** \`${namespace}\`"
  echo "- **Port:** \`${svc_port}\`"
  echo
  echo "**Port-forward command:**"
  echo '```bash'
  echo "kubectl port-forward svc/${svc_name} -n ${namespace} ${svc_port}:${svc_port}"
  echo '```'
  echo
}

print_mysql_connection() {
  local namespace="$1"

  if ! kubectl get ns "$namespace" >/dev/null 2>&1; then
    return
  fi

  set +e
  local svc_name
  svc_name=$(kubectl get svc -n "$namespace" -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
  local svc_status=$?
  set -e
  if [[ $svc_status -ne 0 || -z "$svc_name" ]]; then
    echo "❌ No MySQL service found in \`${namespace}\`."
    echo
    return
  fi

  set +e
  local svc_port
  svc_port=$(kubectl get svc "$svc_name" -n "$namespace" -o jsonpath='{.spec.ports[0].port}' 2>/dev/null)
  local port_status=$?
  set -e
  if [[ $port_status -ne 0 || -z "$svc_port" ]]; then
    svc_port="3306"
  fi

  echo "- **Service:** \`${svc_name}\`"
  echo "- **Namespace:** \`${namespace}\`"
  echo "- **Port:** \`${svc_port}\`"
  echo
  echo "**Connection test command:**"
  echo '```bash'
  echo "kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n ${namespace} --env MYSQL_HOST=${svc_name} -- bash"
  echo '```'
  echo
  echo "**Port-forward command:**"
  echo '```bash'
  echo "kubectl port-forward svc/${svc_name} -n ${namespace} ${svc_port}:${svc_port}"
  echo '```'
  echo
}

print_argo_ui_details() {
  local namespace="$1"
  if ! kubectl get ns "$namespace" >/dev/null 2>&1; then
    return
  fi

  local local_port
  if [[ "$ENVIRONMENT" == "dev" ]]; then
    local_port=8080
  else
    local_port=9090
  fi

  echo "**UI:** [http://localhost:${local_port}](http://localhost:${local_port})"
  echo "**Port-forward command:**"
  echo '```bash'
  echo "kubectl port-forward svc/argocd-server -n ${namespace} ${local_port}:80"
  echo '```'
  echo
}

echo "## 🧭 Access Checks"
run_cmd "kubectl version" kubectl version
run_cmd "Current context" kubectl config current-context
run_cmd "Available contexts" kubectl config get-contexts

echo "## 🌐 Cluster Overview"
run_cmd "Cluster info" kubectl cluster-info
run_cmd "Nodes" kubectl get nodes -o wide
run_cmd "Namespaces" kubectl get ns
run_cmd "Pods (all namespaces)" kubectl get pods -A -o wide
run_cmd "Services (all namespaces)" kubectl get svc -A -o wide
run_cmd "Ingresses (all namespaces)" kubectl get ingress -A
run_cmd "Deployments (all namespaces)" kubectl get deploy -A
run_cmd "StatefulSets (all namespaces)" kubectl get statefulset -A
run_cmd "DaemonSets (all namespaces)" kubectl get daemonset -A
run_cmd "PersistentVolumeClaims (all namespaces)" kubectl get pvc -A
run_cmd "PersistentVolumes" kubectl get pv
run_cmd "StorageClasses" kubectl get storageclass
run_cmd "Jobs (all namespaces)" kubectl get jobs -A
run_cmd "CronJobs (all namespaces)" kubectl get cronjobs -A
run_cmd "Horizontal Pod Autoscalers (all namespaces)" kubectl get hpa -A
run_cmd "Resource usage (nodes)" kubectl top nodes
run_cmd "Resource usage (pods, all namespaces)" kubectl top pods -A
cluster_events_cmd="set -o pipefail; kubectl get events -A --sort-by=.metadata.creationTimestamp | tail -n 40"
run_cmd "Recent cluster events" bash -lc "$cluster_events_cmd"

echo "## 🚦 Argo CD (\`${ARGO_NS}\`)"
if namespace_overview "$ARGO_NS"; then
  run_cmd "Applications" kubectl get applications -n "$ARGO_NS"
  run_cmd "ApplicationSets" kubectl get applicationsets -n "$ARGO_NS"
  run_cmd "AppProjects" kubectl get appprojects -n "$ARGO_NS"
  print_argo_ui_details "$ARGO_NS"
fi

echo "## 🎨 Frontend (\`frontend-${ENVIRONMENT}\`)"
if namespace_overview "frontend-${ENVIRONMENT}"; then
  print_service_access "frontend-${ENVIRONMENT}" "80"
fi

echo "## ⚙️ Backend (\`backend-${ENVIRONMENT}\`)"
if namespace_overview "backend-${ENVIRONMENT}"; then
  print_service_access "backend-${ENVIRONMENT}" "8081"
fi

echo "## 🛢️ MySQL (\`mysql-${ENVIRONMENT}\`)"
if namespace_overview "mysql-${ENVIRONMENT}"; then
  print_mysql_connection "mysql-${ENVIRONMENT}"
fi

echo "## 🔐 Cert-Manager (\`cert-manager\`)"
namespace_overview "cert-manager" || true

echo "## 🔄 Sealed Secrets (\`kube-system\`)"
if kubectl get ns kube-system >/dev/null 2>&1; then
  track_namespace "kube-system"
  run_cmd "Sealed Secrets pods" kubectl get pods -n kube-system -l name=sealed-secrets-controller -o wide
  run_cmd "Sealed Secrets deployment" kubectl get deploy -n kube-system -l name=sealed-secrets-controller -o wide
  run_cmd "Sealed Secrets service" kubectl get svc -n kube-system -l name=sealed-secrets-controller -o wide
  kube_events_cmd="set -o pipefail; kubectl get events -n kube-system --sort-by=.metadata.creationTimestamp | tail -n 40"
  run_cmd "Recent kube-system events" bash -lc "$kube_events_cmd"
  echo
else
  echo "❌ Namespace \`kube-system\` not found."
  echo
fi

print_rollout_statuses

echo "✅ Tests complete."

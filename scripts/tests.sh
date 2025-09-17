#!/bin/bash
set -e

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "# 🧪 Test Results for \`$ENVIRONMENT\`"
echo

# Helper to wrap outputs in collapsible blocks
collapse() {
  local title="$1"
  shift
  echo "<details><summary>${title}</summary>"
  echo
  echo '```bash'
  "$@"
  echo '```'
  echo "</details>"
  echo
}

# Cluster Info
collapse "🌐 Cluster Info" kubectl cluster-info
collapse "🖥️ Nodes" kubectl get nodes -o wide
collapse "📦 Namespaces" kubectl get ns
collapse "🟢 Pods (all namespaces)" kubectl get pods -A -o wide
collapse "🔌 Services (all namespaces)" kubectl get svc -A -o wide
collapse "🌍 Ingresses" kubectl get ingress -A

# ArgoCD Applications
collapse "🚦 Argo CD Applications" kubectl get applications -n "$ARGO_NS"

# ArgoCD UI
if [[ "$ENVIRONMENT" == "dev" ]]; then
  LOCAL_PORT=8080
else
  LOCAL_PORT=9090
fi
echo "👉 **Argo CD UI:** [http://localhost:${LOCAL_PORT}](http://localhost:${LOCAL_PORT})"
echo

# Deployment rollout
echo "## 🚀 Deployment Rollout Status"
for ns in $(kubectl get ns -o jsonpath='{.items[*].metadata.name}'); do
  for dep in $(kubectl get deploy -n $ns -o jsonpath='{.items[*].metadata.name}' 2>/dev/null || true); do
    echo "### 📦 $ns/$dep"
    echo "<details><summary>Status</summary>"
    echo
    echo '```bash'
    kubectl rollout status deploy/$dep -n $ns --timeout=10s || echo "⚠️  $ns/$dep not ready"
    echo '```'
    echo "</details>"
    echo
  done
done

# HPAs
collapse "📈 HPAs" kubectl get hpa -A

# Resource Usage
collapse "📊 Resource Usage (nodes)" kubectl top nodes
collapse "📊 Resource Usage (pods)" kubectl top pods -A

# Connection Tests
echo "## 🔗 Connection Tests"

## MySQL
echo "### 🛢️ MySQL"
if kubectl get svc -n "mysql-${ENVIRONMENT}" | grep -q mysql; then
  MYSQL_SVC=$(kubectl get svc -n "mysql-${ENVIRONMENT}" -o jsonpath='{.items[0].metadata.name}')
  MYSQL_PORT=$(kubectl get svc -n "mysql-${ENVIRONMENT}" $MYSQL_SVC -o jsonpath='{.spec.ports[0].port}')
  echo "**Service:** $MYSQL_SVC"
  echo "**Namespace:** mysql-${ENVIRONMENT}"
  echo "**Port:** $MYSQL_PORT"
  echo
  echo '```bash'
  echo "kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n mysql-${ENVIRONMENT} -- bash"
  echo '```'
else
  echo "❌ No MySQL service found in mysql-${ENVIRONMENT}"
fi
echo

## Frontend
echo "### 🎨 Frontend"
collapse "Frontend services" kubectl get svc -n "frontend-${ENVIRONMENT}" -o wide || true

## Backend
echo "### ⚙️ Backend"
collapse "Backend services" kubectl get svc -n "backend-${ENVIRONMENT}" -o wide || true

echo "✅ Tests complete.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
#!/bin/bash
set -e

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "# 🧪 Test Results for \`$ENVIRONMENT\`"
echo "_Generated on $(date '+%Y-%m-%d %H:%M:%S')_"
echo

collapse() {
  local title="$1"
  shift
  echo "<details><summary>${title}</summary>"
  echo
  echo '```bash'
  "$@"
  echo '```'
  echo "</details>"
  echo
}

# ==============================
# 1. ArgoCD
# ==============================
echo "## 🚦 Argo CD"
collapse "ArgoCD Applications" kubectl get applications -n "$ARGO_NS"

if [[ "$ENVIRONMENT" == "dev" ]]; then
  LOCAL_PORT=8080
else
  LOCAL_PORT=9090
fi
echo "**UI:** [http://localhost:${LOCAL_PORT}](http://localhost:${LOCAL_PORT})"
echo

# ==============================
# 2. Frontend
# ==============================
echo "## 🎨 Frontend"
collapse "Pods" kubectl get pods -n "frontend-${ENVIRONMENT}" -o wide
collapse "Services" kubectl get svc -n "frontend-${ENVIRONMENT}" -o wide
collapse "Ingress" kubectl get ingress -n "frontend-${ENVIRONMENT}"

# ==============================
# 3. Backend
# ==============================
echo "## ⚙️ Backend"
collapse "Pods" kubectl get pods -n "backend-${ENVIRONMENT}" -o wide
collapse "Services" kubectl get svc -n "backend-${ENVIRONMENT}" -o wide
collapse "Ingress" kubectl get ingress -n "backend-${ENVIRONMENT}" || true

# ==============================
# 4. MySQL
# ==============================
echo "## 🛢️ MySQL"
if kubectl get svc -n "mysql-${ENVIRONMENT}" | grep -q mysql; then
  collapse "Pods" kubectl get pods -n "mysql-${ENVIRONMENT}" -o wide
  collapse "Services" kubectl get svc -n "mysql-${ENVIRONMENT}" -o wide
  echo "**Connection test command:**"
  echo '```bash'
  echo "kubectl run mysql-client --rm -it --image=bitnami/mysql:8.0 -n mysql-${ENVIRONMENT} -- bash"
  echo '```'
else
  echo "❌ No MySQL service found in mysql-${ENVIRONMENT}"
fi

echo
echo "✅ Tests complete."

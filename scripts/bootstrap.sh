#!/bin/bash
set -e

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "=== 🚀 Bootstrapping environment: $ENVIRONMENT ==="

# 0. Install dependencies if needed
echo "==> Running setup-tools.sh to ensure dependencies are installed"
./scripts/setup-tools.sh

# 1. Create cluster
./scripts/cluster.sh "$ENVIRONMENT"

# 2. Terraform init + apply for infra (argocd + metrics-server)
cd terraform
terraform init -input=false
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.argocd -auto-approve

# 3. Terraform apply for apps (frontend, backend, mysql)
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.applications -auto-approve

# 4. Get Argo CD admin password
echo "==> Argo CD admin password:"
kubectl -n $ARGO_NS get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo

# 5. Start port-forward in background (per-env port)
if [[ "$ENVIRONMENT" == "dev" ]]; then
  LOCAL_PORT=8080
elif [[ "$ENVIRONMENT" == "prod" ]]; then
  LOCAL_PORT=9090
else
  LOCAL_PORT=8080
fi

echo "==> Starting Argo CD port-forward on http://localhost:${LOCAL_PORT}"
kubectl port-forward svc/argocd-server -n "$ARGO_NS" ${LOCAL_PORT}:443 >/dev/null 2>&1 &
PF_PID=$!
echo $PF_PID > "/tmp/argocd-port-forward-${ENVIRONMENT}.pid"

echo "✅ Port-forward running in background (PID: $PF_PID)"
echo "==> Stop it with: kill \$(cat /tmp/argocd-port-forward-${ENVIRONMENT}.pid)"

echo "=== ✅ Environment $ENVIRONMENT ready ==="

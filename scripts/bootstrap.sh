#!/bin/bash
set -euo pipefail

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "=== 🚀 Bootstrapping environment: $ENVIRONMENT ==="

# -------------------------
# 0. Verify dependencies
# -------------------------
for cmd in docker kubectl k3d helm terraform kubeseal; do
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

case "$ENVIRONMENT" in
  dev)
    kubectl create secret generic mysql-dev-secret \
      -n backend-dev \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --dry-run=client -o yaml \
      | kubeseal -o yaml > infrastructure/sealed/mysql-dev-sealed.yaml
    ;;
  prod)
    kubectl create secret generic mysql-prod-secret \
      -n backend-prod \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --dry-run=client -o yaml \
      | kubeseal -o yaml > infrastructure/sealed/mysql-prod-sealed.yaml
    ;;
esac

echo "✅ SealedSecrets generated for $ENVIRONMENT"

# -------------------------
# 4. Build & import images
# -------------------------
NGINX_BASE="nginx:1.25-alpine"
PYTHON_BASE="python:3.11-slim-bullseye"

docker pull $NGINX_BASE
docker pull $PYTHON_BASE

FE_IMAGE="vyking-frontend:${ENVIRONMENT}"
BE_IMAGE="vyking-backend:${ENVIRONMENT}"

docker build --build-arg BASE_IMAGE=$NGINX_BASE \
  -t $FE_IMAGE ./applications/frontend
docker build --build-arg BASE_IMAGE=$PYTHON_BASE \
  -t $BE_IMAGE ./applications/backend/app

k3d image import -c "$CLUSTER_NAME" $FE_IMAGE $BE_IMAGE

# -------------------------
# 5. Terraform apply
# -------------------------
cd terraform
terraform init -input=false
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.argocd -auto-approve
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.applications -auto-approve

# -------------------------
# 6. ArgoCD login info
# -------------------------
echo "==> Argo CD admin password:"
kubectl -n $ARGO_NS get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo

kubectl port-forward svc/argocd-server -n "$ARGO_NS" 8080:443 >/dev/null 2>&1 &
echo $! > "/tmp/argocd-port-forward-${ENVIRONMENT}.pid"

echo "=== ✅ Environment $ENVIRONMENT ready ==="
echo "==> Argo CD UI: http://localhost:8080"

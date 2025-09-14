#!/bin/bash
set -e

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

echo "=== 🚀 Bootstrapping environment: $ENVIRONMENT ==="

# -------------------------
# 0. Verify dependencies
# -------------------------
for cmd in docker kubectl k3d helm terraform; do
  if ! command -v $cmd &> /dev/null; then
    echo "❌ $cmd is not installed. Please run ./scripts/setup-tools.sh first."
    exit 1
  fi
done
echo "✅ All dependencies found"

# -------------------------
# 1. Update /etc/hosts
# -------------------------
if [[ "$ENVIRONMENT" == "dev" ]]; then
  FE_HOST="frontend-dev.local"
elif [[ "$ENVIRONMENT" == "prod" ]]; then
  FE_HOST="frontend-prod.local"
else
  FE_HOST="frontend-dev.local"
fi

if ! grep -q "$FE_HOST" /etc/hosts; then
  echo "==> Adding $FE_HOST to /etc/hosts"
  echo "127.0.0.1   $FE_HOST" | sudo tee -a /etc/hosts
else
  echo "✅ /etc/hosts already contains $FE_HOST"
fi

# -------------------------
# 2. Create cluster
# -------------------------
./scripts/cluster.sh "$ENVIRONMENT"

# -------------------------
# 3. Pre-pull base images (for offline / restricted networks)
# -------------------------
echo "==> Ensuring base images are available"

# Base image versions
NGINX_BASE="nginx:1.25-alpine"
PYTHON_BASE="python:3.11-slim-bullseye"

# Tarball paths
NGINX_TAR="/tmp/nginx.tar"
PYTHON_TAR="/tmp/python.tar"

# Function to pull+save if tarball missing
ensure_image() {
  local image=$1
  local tar=$2
  if [[ -f "$tar" ]]; then
    echo "✅ Tarball already exists for $image ($tar)"
  else
    echo "==> Pulling $image from Docker Hub"
    docker pull "$image" || {
      echo "❌ Failed to pull $image. Please check your network/proxy."
      exit 1
    }
    echo "==> Saving $image to $tar"
    docker save "$image" -o "$tar"
  fi
}

ensure_image "$NGINX_BASE" "$NGINX_TAR"
ensure_image "$PYTHON_BASE" "$PYTHON_TAR"

echo "==> Building and importing Docker images for $ENVIRONMENT"

# Tags per environment
FE_IMAGE="vyking-frontend:${ENVIRONMENT}"
BE_IMAGE="vyking-backend:${ENVIRONMENT}"

# Frontend
docker build --build-arg BASE_IMAGE=$NGINX_BASE \
  -t $FE_IMAGE ./applications/frontend
k3d image import -c "$CLUSTER_NAME" $FE_IMAGE

# Backend
docker build --build-arg BASE_IMAGE=$PYTHON_BASE \
  -t $BE_IMAGE ./applications/backend/app
k3d image import -c "$CLUSTER_NAME" $BE_IMAGE

# -------------------------
# 4. Terraform init + infra
# -------------------------
cd terraform
terraform init -input=false
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.argocd -auto-approve

# -------------------------
# 5. Terraform apps
# -------------------------
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.applications -auto-approve

# -------------------------
# 6. Get Argo CD admin password
# -------------------------
echo "==> Argo CD admin password:"
kubectl -n $ARGO_NS get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo

# -------------------------
# 7. Start Argo CD port-forward
# -------------------------
if [[ "$ENVIRONMENT" == "dev" ]]; then
  LOCAL_PORT=8080
elif [[ "$ENVIRONMENT" == "prod" ]]; then
  LOCAL_PORT=9090
else
  LOCAL_PORT=8080
fi

kubectl port-forward svc/argocd-server -n "$ARGO_NS" ${LOCAL_PORT}:443 >/dev/null 2>&1 &
PF_PID=$!
echo $PF_PID > "/tmp/argocd-port-forward-${ENVIRONMENT}.pid"

# -------------------------
# 8. Final info
# -------------------------
echo "✅ Port-forward running in background (PID: $PF_PID)"
echo "==> Argo CD UI: http://localhost:${LOCAL_PORT}"
echo "==> Frontend URL: http://${FE_HOST}"
echo "==> Stop port-forward: kill \$(cat /tmp/argocd-port-forward-${ENVIRONMENT}.pid)"

echo "=== ✅ Environment $ENVIRONMENT ready ==="

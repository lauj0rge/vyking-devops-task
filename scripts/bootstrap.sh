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
      -n mysql-dev \
      --from-literal=rootPassword=$DEV_DB_ROOT_PASS \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/mysql-dev-secret.yaml

    kubectl create secret generic mysql-credentials-dev \
      -n backend-dev \
      --from-literal=username=$DEV_DB_USER \
      --from-literal=password=$DEV_DB_PASS \
      --from-literal=database=$DEV_DB_NAME \
      --from-literal=host=mysql-dev.mysql-dev.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/mysql-credentials-dev.yaml
    ;;
  prod)
    kubectl create secret generic mysql-prod-secret \
      -n mysql-prod \
      --from-literal=rootPassword=$PROD_DB_ROOT_PASS \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/mysql-prod-secret.yaml

    kubectl create secret generic mysql-credentials-prod \
      -n backend-prod \
      --from-literal=username=$PROD_DB_USER \
      --from-literal=password=$PROD_DB_PASS \
      --from-literal=database=$PROD_DB_NAME \
      --from-literal=host=mysql-prod.mysql-prod.svc.cluster.local \
      --from-literal=port=3306 \
      --dry-run=client -o yaml | kubeseal -o yaml > infrastructure/sealed/mysql-credentials-prod.yaml
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
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.infra -auto-approve
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.applications -auto-approve

# -------------------------
# 6. ArgoCD login info
# -------------------------
echo "==> Argo CD username: admin"
echo "==> Argo CD admin password:"
kubectl -n $ARGO_NS get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo

kubectl port-forward svc/argocd-server -n "$ARGO_NS" 8080:443 >/dev/null 2>&1 &
echo $! > "/tmp/argocd-port-forward-${ENVIRONMENT}.pid"

echo "=== ✅ Environment $ENVIRONMENT ready ==="
echo "==> Argo CD UI: http://localhost:8080"

# -------------------------
# 7. Front End access
# -------------------------
echo "✅ Port-forward running in background (PID: $PF_PID)"
echo "==> Argo CD UI: http://localhost:${LOCAL_PORT}"
echo "==> Frontend URL: http://${FE_HOST}"

if [[ "$ENVIRONMENT" == "dev" ]]; then
  echo "==> Frontend URL: https://${FE_HOST} (self-signed)"
fi

echo "==> Stop port-forward: kill \$(cat /tmp/argocd-port-forward-${ENVIRONMENT}.pid)"
echo "=== ✅ Environment $ENVIRONMENT ready ==="

# -------------------------
# . MySQL Connection Info
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
  mysql -h $MYSQL_HOST -P $MYSQL_PORT -u$MYSQL_USER -p$MYSQL_DB"

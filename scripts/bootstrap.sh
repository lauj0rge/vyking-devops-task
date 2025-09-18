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

./scripts/secrets-gen.sh "$ENVIRONMENT"

echo "✅ SealedSecrets generated for $ENVIRONMENT"

# -------------------------
# 4. Build & import images
# -------------------------
# -------------------------
 # 4. Build & import images
 # -------------------------
 echo "==> Building & importing images for $ENVIRONMENT"

 ./scripts/images-build.sh "$ENVIRONMENT" "$CLUSTER_NAME"

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

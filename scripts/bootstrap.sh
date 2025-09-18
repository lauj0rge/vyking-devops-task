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

set -a
source ./scripts/secrets.env
set +a

echo "✅ SealedSecrets generated for $ENVIRONMENT"

# -------------------------

 # 4. Build & import images
 # -------------------------
 echo "==> Building & importing images for $ENVIRONMENT"

set -a
 ./scripts/images-build.sh "$ENVIRONMENT" "$CLUSTER_NAME"
set +a

 echo "✅ Images ready for $ENVIRONMENT"

# -------------------------
# 5. Terraform apply with environment values
# -------------------------
cd terraform

TFVARS_FILE="env/${ENVIRONMENT}.tfvars"

terraform init -input=false

# 5.1 Infra + ingress (cluster-level bits)
terraform apply -var-file="$TFVARS_FILE" \
  -target=module.infra \
  -target=module.ingress \
  -auto-approve

# 5.2 ArgoCD core (installs ArgoCD and its CRDs)
terraform apply -var-file="$TFVARS_FILE" \
  -target=module.argocd \
  -auto-approve

echo "==> Waiting for ArgoCD Application CRD"
kubectl wait --for=condition=Established crd/applications.argoproj.io --timeout=120s || {
  echo "❌ Application CRD not ready, ArgoCD might have failed to install"
  exit 1
}

# 5.3 ArgoCD Applications (only after CRDs exist)
terraform apply -var-file="$TFVARS_FILE" \
  -target=module.applications \
  -auto-approve

cd ..
# -------------------------
# 6. ArgoCD login info
# -------------------------

set -a
./scripts/argocd-login-info.sh "$ENVIRONMENT" "$ARGO_NS"
set +a

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
set -a
./scripts/mysql-connection-info.sh "$ENVIRONMENT"
set +a

# -------------------------
# 10. Run Tests & Save Report
# -------------------------
echo "==> Running cluster tests..."
TIMESTAMP=$(date '+%Y%m%d-%H%M%S')
REPORT_FILE="tests-results-${ENVIRONMENT}-${TIMESTAMP}.md"

./scripts/tests.sh "$ENVIRONMENT" > "$REPORT_FILE" 2>&1

echo "✅ Test results written to $REPORT_FILE"

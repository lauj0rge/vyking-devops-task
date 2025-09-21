#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./lib/common.sh
source "${SCRIPT_DIR}/lib/common.sh"

bootstrap::require_environment "${1:-}"

echo "=== 🚀 Bootstrapping environment: ${ENVIRONMENT} ==="
echo "DEBUG: ENVIRONMENT is set to: ${ENVIRONMENT}"

echo "# -------------------------"
echo "# 0. Verify dependencies"
echo "# -------------------------"
bootstrap::ensure_dependencies

echo "# -------------------------"
echo "# 1. Load secrets file"
echo "# -------------------------"
bootstrap::load_secrets

echo "# -------------------------"
echo "# 2. Create cluster (with SealedSecrets)"
echo "# -------------------------"
bootstrap::create_cluster "${ENVIRONMENT}"

echo "# -------------------------"
echo "# 3. Generate SealedSecrets"
echo "# -------------------------"
declare -a SEALED_SECRET_FILES=()
bootstrap::generate_sealed_secrets SEALED_SECRET_FILES "${ENVIRONMENT}"

bootstrap::git_safe_commit \
  "$(bootstrap::sealed_secret_commit_message "${ENVIRONMENT}")" \
  "${SEALED_SECRET_FILES[@]}"

echo "# -------------------------"
echo "# 4. Build & import images"
echo "# -------------------------"
bootstrap::build_and_import_images "${ENVIRONMENT}" "${CLUSTER_NAME}"
bootstrap::ensure_local_image_policy "${ENVIRONMENT}"
bootstrap::restart_workloads "${ENVIRONMENT}"

echo "# -------------------------"
echo "# 5. Terraform apply with environment values"
echo "# -------------------------"
bootstrap::terraform_apply "${ENVIRONMENT}"

echo "# -------------------------"
echo "# 6. ArgoCD login info"
echo "# -------------------------"
bootstrap::argocd_login_info "${ENVIRONMENT}" "${ARGO_NS}"

echo "# -------------------------"
echo "# 7. Ingress-NGINX port-forward"
echo "# -------------------------"
bootstrap::start_ingress_port_forward "${ENVIRONMENT}"

echo "# -------------------------"
echo "# 8. MySQL Connection Info"
echo "# -------------------------"
bootstrap::print_mysql_info "${ENVIRONMENT}"

echo "# -------------------------"
echo "# 9. Run Tests & Save Report"
echo "# -------------------------"
bootstrap::run_tests "${ENVIRONMENT}"

echo "=== ✅ Environment ${ENVIRONMENT} bootstrap completed ==="

#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./lib/common.sh
source "${SCRIPT_DIR}/lib/common.sh"

bootstrap::require_environment "${1:-}" "dev"
CLUSTER_NAME="vyking-${ENVIRONMENT}"

echo "=== 🧹 Cleaning environment: ${ENVIRONMENT} ==="

read -p "⚠️  Are you sure you want to destroy environment '${ENVIRONMENT}'? (y/N): " CONFIRM
if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
  echo "❌ Cleanup aborted."
  exit 1
fi

echo "==> Running Terraform destroy for environment: ${ENVIRONMENT}"
pushd "${BOOTSTRAP_REPO_ROOT}/terraform" > /dev/null

if [[ -f "env/${ENVIRONMENT}.tfvars" ]]; then
  terraform destroy -auto-approve -var-file="env/${ENVIRONMENT}.tfvars"
else
  terraform destroy -auto-approve
fi

popd > /dev/null

bootstrap::stop_all_port_forwards "${ENVIRONMENT}"

echo "==> Deleting k3d cluster: ${CLUSTER_NAME}"
k3d cluster delete "${CLUSTER_NAME}" || true

echo "==> Cleaning kubeconfig for ${CLUSTER_NAME}"
rm -f "${HOME}/.kube/${CLUSTER_NAME}-config"

echo "==> Remaining clusters:"
k3d cluster list

echo "=== ✅ Cleanup complete for ${ENVIRONMENT} ==="

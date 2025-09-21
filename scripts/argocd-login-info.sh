#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./lib/common.sh
source "${SCRIPT_DIR}/lib/common.sh"

bootstrap::require_environment "${1:-}" "dev"

if [[ -n "${2:-}" ]]; then
  ARGO_NS="${2}"
fi

bootstrap::argocd_login_info "${ENVIRONMENT}" "${ARGO_NS}"

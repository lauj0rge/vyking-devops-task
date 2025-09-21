#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./lib/common.sh
source "${SCRIPT_DIR}/lib/common.sh"

bootstrap::require_environment "${1:-}" "dev"
bootstrap::ensure_dependencies docker k3d kubectl

bootstrap::build_and_import_images "${ENVIRONMENT}" "${CLUSTER_NAME}"

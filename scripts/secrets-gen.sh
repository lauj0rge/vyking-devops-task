#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./lib/common.sh
source "${SCRIPT_DIR}/lib/common.sh"

bootstrap::require_environment "${1:-}" "dev"
bootstrap::ensure_dependencies kubectl kubeseal git
bootstrap::load_secrets

declare -a SEALED_SECRET_FILES=()
bootstrap::generate_sealed_secrets SEALED_SECRET_FILES "${ENVIRONMENT}"

bootstrap::git_safe_commit \
  "$(bootstrap::sealed_secret_commit_message "${ENVIRONMENT}")" \
  "${SEALED_SECRET_FILES[@]}"

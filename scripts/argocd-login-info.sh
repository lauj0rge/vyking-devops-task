#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT=${1:-dev}
ARGO_NS=${2:-argocd-dev}

echo "==> Argo CD username: admin"
echo -n "==> Argo CD admin password: "
kubectl -n "$ARGO_NS" get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo

echo "=== ✅ Environment $ENVIRONMENT ready ==="
echo "==> Argo CD UI: http://frontend-dev.local:30443/"

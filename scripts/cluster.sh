#!/bin/bash

# Default cluster name if not provided
ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

# Ports only for prod
if [[ "$ENVIRONMENT" == "prod" ]]; then
  PORTS=(-p "8080:80@loadbalancer" -p "8443:443@loadbalancer")
else
  PORTS=()
fi

echo "==> Deleting existing cluster '$CLUSTER_NAME' (if any)..."
k3d cluster delete "$CLUSTER_NAME" || true

echo "==> Creating new cluster: $CLUSTER_NAME"
k3d cluster create "$CLUSTER_NAME" \
  --servers 1 \
  --agents 2 \
  "${PORTS[@]}"

echo "==> Exporting kubeconfig to ~/.kube/${CLUSTER_NAME}-config"
mkdir -p ~/.kube
k3d kubeconfig get "$CLUSTER_NAME" > ~/.kube/${CLUSTER_NAME}-config
chmod 600 ~/.kube/${CLUSTER_NAME}-config
export KUBECONFIG=$HOME/.kube/${CLUSTER_NAME}-config

echo "==> Cluster info:"
kubectl cluster-info
kubectl get nodes -o wide

# -------------------------
# Argo CD Port Forward (background)
# -------------------------
echo "==> Setting up port-forward for Argo CD (namespace: $ARGO_NS)"
kubectl port-forward svc/argocd-server -n "$ARGO_NS" 8080:443 >/dev/null 2>&1 &
PF_PID=$!
echo $PF_PID > "/tmp/argocd-port-forward-${ENVIRONMENT}.pid"

echo "✅ Port-forward running in background (PID: $PF_PID)"
echo "==> Access Argo CD UI at: http://localhost:8080"
echo "==> To stop port-forward: kill \$(cat /tmp/argocd-port-forward-${ENVIRONMENT}.pid)"

# -------------------------
# Argo CD Admin Password Helper
# -------------------------
echo "==> Once Argo CD is deployed, get the admin password with:"
echo "kubectl -n $ARGO_NS get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d && echo"


#!/bin/bash

ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"
ARGO_NS="argocd-${ENVIRONMENT}"

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
# Install SealedSecrets
# -------------------------
SEALED_TAG="0.27.1"
SEALED_IMAGE="bitnami/sealed-secrets-controller:${SEALED_TAG}"

echo "==> Pre-pulling SealedSecrets image: ${SEALED_IMAGE}"
docker pull "${SEALED_IMAGE}"

echo "==> Importing SealedSecrets image into k3d cluster: ${CLUSTER_NAME}"
k3d image import -c "${CLUSTER_NAME}" "${SEALED_IMAGE}" --keep-tools

echo "==> Installing SealedSecrets controller (${SEALED_TAG})"
kubectl apply -f "https://github.com/bitnami-labs/sealed-secrets/releases/download/v${SEALED_TAG}/controller.yaml"

echo "==> Waiting for SealedSecrets controller to be ready..."
kubectl rollout status deployment sealed-secrets-controller \
  -n kube-system --timeout=120s

echo "==> Cluster ${CLUSTER_NAME} is ready with SealedSecrets installed."

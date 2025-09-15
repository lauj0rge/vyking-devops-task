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

echo "==> Installing SealedSecrets controller"
kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.26.0/controller.yaml
wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.26.0/kubeseal-0.26.0-linux-amd64.tar.gz
tar -xvf kubeseal-0.26.0-linux-amd64.tar.gz
sudo install -m 755 kubeseal /usr/local/bin/kubeseal

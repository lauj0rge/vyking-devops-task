#!/bin/bash

# Default environment = dev
ENVIRONMENT="${1:-dev}"
CLUSTER_NAME="vyking-${ENVIRONMENT}"

echo "==> Running Terraform destroy for environment: $ENVIRONMENT"
pushd "$(dirname "$0")/../terraform" > /dev/null

if [ -f "env/${ENVIRONMENT}.tfvars" ]; then
  terraform destroy -auto-approve -var-file="env/${ENVIRONMENT}.tfvars"
else
  terraform destroy -auto-approve
fi

popd > /dev/null

echo "==> Deleting k3d cluster: $CLUSTER_NAME"
k3d cluster delete "$CLUSTER_NAME" || true

echo "==> Cleaning kubeconfig for $CLUSTER_NAME"
rm -f "$HOME/.kube/${CLUSTER_NAME}-config"

echo "==> Remaining clusters:"
k3d cluster list

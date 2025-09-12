#!/bin/bash

echo "=== Verifying installed tools ==="

echo -n "kubectl: "
kubectl version --client --short

echo -n "k3d: "
k3d version

echo -n "docker: "
docker --version

echo -n "helm: "
helm version --short

echo -n "terraform: "
terraform version

echo -n "git: "
git --version

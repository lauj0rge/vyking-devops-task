#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT=${1:-dev}
CLUSTER_NAME=${2:-vyking-dev}

NGINX_BASE="nginx:1.25-alpine"
PYTHON_BASE="python:3.11-slim-bullseye"

FE_IMAGE="vyking-frontend:${ENVIRONMENT}"
BE_IMAGE="vyking-backend:${ENVIRONMENT}"

echo "==> Pulling base images"
docker pull "$NGINX_BASE"
docker pull "$PYTHON_BASE"

echo "==> Building images"
docker build --no-cache \
  --build-arg BASE_IMAGE="$NGINX_BASE" \
  --build-arg ENVIRONMENT="$ENVIRONMENT" \
  -t "$FE_IMAGE" ./applications/frontend/app

docker build --no-cache \
  --build-arg BASE_IMAGE="$PYTHON_BASE" \
  --build-arg ENVIRONMENT="$ENVIRONMENT" \
  -t "$BE_IMAGE" ./applications/backend/app

echo "==> Importing into k3d cluster: $CLUSTER_NAME"
k3d image import -c "$CLUSTER_NAME" "$FE_IMAGE" "$BE_IMAGE" --keep-tools

MYSQL_BASE="mysql:latest"
MYSQL_IMAGE="vyking-mysql:${ENVIRONMENT}"

echo "==> Pulling MySQL base image"
docker pull "$MYSQL_BASE"

echo "==> Building MySQL image"
docker build --no-cache \
  --build-arg BASE_IMAGE="$MYSQL_BASE" \
  -t "$MYSQL_IMAGE" ./applications/mysql

echo "==> Importing MySQL image into k3d cluster: $CLUSTER_NAME"
k3d image import -c "$CLUSTER_NAME" "$MYSQL_IMAGE" --keep-tools

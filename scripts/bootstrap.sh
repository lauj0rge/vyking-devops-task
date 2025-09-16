# -------------------------
# 4. Build & import images
# -------------------------
NGINX_BASE="nginx:1.25-alpine"
PYTHON_BASE="python:3.11-slim-bullseye"

docker pull $NGINX_BASE
docker pull $PYTHON_BASE

FE_IMAGE="vyking-frontend:${ENVIRONMENT}"
BE_IMAGE="vyking-backend:${ENVIRONMENT}"

# Updated paths to match your structure
docker build --build-arg BASE_IMAGE=$NGINX_BASE \
  -t $FE_IMAGE ./applications/frontend/app
docker build --build-arg BASE_IMAGE=$PYTHON_BASE \
  -t $BE_IMAGE ./applications/backend/app

k3d image import -c "$CLUSTER_NAME" $FE_IMAGE $BE_IMAGE

# -------------------------
# 5. Terraform apply with environment values
# -------------------------
cd terraform
terraform init -input=false

# Use environment-specific values files
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.argocd -auto-approve
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.infra -auto-approve
terraform apply -var-file=env/${ENVIRONMENT}.tfvars -target=module.applications -auto-approve
cd ..
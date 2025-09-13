**
chmod +x scripts/setup-tools.sh ./scripts/cluster.sh ./scripts/bootstrap.sh scripts/tests.sh ./scripts/cleanup.sh


# Install everything
./scripts/setup-tools.sh

# Verify versions
./scripts/verify-tools.sh

---
get cluster up
chmod +x scripts/cluster.sh
./scripts/cluster.sh dev

---
2. Accessing Argo CD (user and password)

By default Argo CD comes with:

    _Username: admin
    Password: stored in a Kubernetes secret._

Get the password with:
kubectl -n argocd-dev get secret argocd-initial-admin-secret \
-o jsonpath="{.data.password}" | base64 -d && echo

---
port-forward

kubectl port-forward svc/argocd-server -n argocd-{env} 8080:443

---
clean up
chmod +x scripts/cleanup.sh
./scripts/cleanup.sh dev
---
check created resources
kubectl get pods -A

kubectl get applications -A

kubectl get svc -A

----
terraform init
terraform plan -var-file=env/dev.tfvars
terraform apply -var-file=env/dev.tfvars


---
Behavior

./scripts/bootstrap.sh dev

Runs setup-tools.sh → installs Docker, kubectl, k3d, Helm, Terraform.

Creates the cluster.

Applies Terraform infra (Argo CD, metrics-server).

Applies Terraform apps (frontend, backend, MySQL).

Prints Argo CD password.

Starts port-forward in background.

On a fresh Ubuntu VM, this script will fully prepare your environment end-to-end.


---
script/tests.sh
full diagnostic + health checker. It will now:

Show all resources.

Check rollout status of deployments.

Check HPA scaling (if defined).

Use kubectl top to show resource usage (if metrics-server is available).
**
chmod +x scripts/setup-tools.sh scripts/verify-tools.sh

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
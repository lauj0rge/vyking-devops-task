environment = "prod"

# kubeconfig for prod cluster
kubeconfig_path = "~/.kube/vyking-prod-config"

# Argo CD and app namespaces
argocd_namespace = "argocd"
apps_namespace   = "default"

# Git repository to sync from
repo_url    = "https://github.com/lauj0rge/vyking-devops-task.git"
repo_branch = "prod"

frontend_namespace = "frontend-prod"
backend_namespace  = "backend-prod"
mysql_namespace    = "mysql-prod"


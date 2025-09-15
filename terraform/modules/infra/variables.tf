variable "environment" {}
variable "repo_url" {}
variable "repo_branch" { default = "main" }
variable "backend_namespace" { default = "backend-dev" }
variable "mysql_namespace" { default = "mysql-dev" }
variable "argocd_namespace" {}

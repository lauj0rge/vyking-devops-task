# From Argo CD module
output "argocd_namespace" {
  value       = module.argocd.namespace
  description = "Namespace where Argo CD is running"
}

output "argocd_release_name" {
  value       = module.argocd.release_name
  description = "Helm release name of Argo CD"
}

# From Apps module

output "mysql_app_name" {
  description = "Name of the Argo CD Application resource for infrastructure"
  value       = module.applications.mysql_app_name
}

output "frontend_app_name" {
  description = "Name of the Argo CD Application resource for applications"
  value       = module.applications.frontend_app_name
}

output "backend_app_name" {
  description = "Name of the Argo CD Application resource for applications"
  value       = module.applications.backend_app_name
}

output "repo_url" {
  value       = module.applications.repo_url
  description = "Git repository synced by Argo CD"
}

output "repo_branch" {
  value       = module.applications.repo_branch
  description = "Git branch synced by Argo CD"
}

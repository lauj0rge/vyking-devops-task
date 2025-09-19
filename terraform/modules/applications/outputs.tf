output "vyking_app_name" {
  description = "Name of the Argo CD Application resource deploying the Vyking stack"
  value       = kubernetes_manifest.vyking_app.manifest.metadata.name
}

output "repo_url" {
  description = "Git repository URL used by the Argo CD Application"
  value       = var.repo_url
}

output "repo_branch" {
  description = "Git branch used by the Argo CD Application"
  value       = var.repo_branch
}

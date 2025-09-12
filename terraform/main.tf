module "argocd" {
  source           = "./modules/argocd"
  argocd_namespace = var.argocd_namespace
}

module "applications" {
  source             = "./modules/applications"
  repo_url           = var.repo_url
  repo_branch        = var.repo_branch
  environment        = var.environment
  frontend_namespace = var.frontend_namespace
  backend_namespace  = var.backend_namespace
  mysql_namespace    = var.mysql_namespace
  argocd_namespace   = var.argocd_namespace

  depends_on = [module.argocd]
}

resource "kubernetes_namespace" "mysql" {
  metadata {
    name = var.mysql_namespace
  }
}
resource "kubernetes_manifest" "mysql" {
  depends_on = [kubernetes_namespace.mysql]
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "db"
      namespace = var.argocd_namespace
      labels = {
        environment = var.environment
        part_of     = "vyking-db"
        component   = "db"
      }
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "infrastructure"
      }
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.mysql_namespace
      }
      syncPolicy = {
        automated = {
          prune    = true
          selfHeal = true
        }
      }
    }
  }
}

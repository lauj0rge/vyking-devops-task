resource "kubernetes_namespace" "mysql" {
  metadata {
    name = var.mysql_namespace
  }
}

# Sync secrets first
resource "kubernetes_manifest" "mysql_secrets" {
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "mysql-secrets"
      namespace = var.argocd_namespace
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "infrastructure/secrets"
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

# Then sync MySQL
resource "kubernetes_manifest" "mysql_app" {
  depends_on = [kubernetes_manifest.mysql_secrets]

  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "mysql"
      namespace = var.argocd_namespace
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "applications/mysql"
        helm = {
          valueFiles = ["${var.environment}-values.yaml"]
        }
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

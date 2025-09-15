resource "kubernetes_namespace" "mysql" {
  metadata {
    name = var.mysql_namespace
  }
}

# SealedSecrets sync
resource "kubernetes_manifest" "mysql_sealed_secrets" {
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "mysql-sealed-secrets"
      namespace = var.argocd_namespace
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "infrastructure/sealed"
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

# Then deploy MySQL Helm chart
resource "kubernetes_manifest" "mysql_app" {
  depends_on = [kubernetes_manifest.mysql_sealed_secrets]

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

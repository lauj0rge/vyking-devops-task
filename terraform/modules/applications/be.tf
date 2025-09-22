resource "kubernetes_namespace" "backend" {
  metadata {
    name = var.backend_namespace
  }
}

resource "kubernetes_manifest" "backend_app" {
  depends_on = [kubernetes_namespace.backend]

  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "backend"
      namespace = var.argocd_namespace
      labels = {
        environment = var.environment
        part_of     = "vyking-app"
        component   = "backend"
      }
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "applications/vyking-app"
        shallowClone: true
        helm = {
          releaseName = "backend"
          valueFiles  = ["environments/values-backend-${var.environment}.yaml"]
          parameters = [
            {
              name  = "image.repository"
              value = "vyking-backend"
            },
            {
              name  = "image.tag"
              value = var.environment
            },
            {
              name  = "image.pullPolicy"
              value = "IfNotPresent"
            }
          ]
        }
      }
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.backend_namespace
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

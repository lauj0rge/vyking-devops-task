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
        part_of     = "vyking-be-app"
        component   = "backend"
      }
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "applications/backend"
        helm = {
          valueFiles = ["environments/values-${var.environment}.yaml"]
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
resource "helm_release" "ingress_nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.11.1"

  namespace  = "ingress-nginx"
  create_namespace = true
}
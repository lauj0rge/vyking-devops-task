resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = var.argocd_namespace
  create_namespace = true
  version          = "8.3"
  values           = [file("${path.module}/values.yaml")]
  wait             = true
  timeout          = 600
}

resource "kubernetes_secret" "git_repo" {
  depends_on = [helm_release.argocd]

  metadata {
    name      = "repo-vyking-git"
    namespace = var.argocd_namespace
    labels = {
      "argocd.argoproj.io/secret-type" = "repository"
    }
  }
  data = {
    url  = var.repo_url
    type = "git"
  }
}
resource "kubernetes_manifest" "vyking_app" {
  depends_on = [kubernetes_secret.git_repo]
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "vyking-app"
      namespace = var.argocd_namespace
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.environment
        path           = "applications/vyking-app"
        helm = {
          valueFiles = ["environments/values-${var.environment}.yaml"]
        }
      }
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = "vyking-${var.environment}"
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

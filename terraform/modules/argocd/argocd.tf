resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = var.argocd_namespace
  create_namespace = true
  version          = "8.3"
  values           = [file("${path.module}/values.yaml")]
  skip_crds        = false
  timeout          = 1200

  set {
    name  = "server.service.type"
    value = "ClusterIP"
  }

  set {
    name  = "controller.args.appResyncPeriod"
    value = "30"
  }

  # Add these settings to reduce resource usage for local development
  set {
    name  = "server.autoscale.enabled"
    value = "false"
  }

  set {
    name  = "repoServer.autoscale.enabled"
    value = "false"
  }

  set {
    name  = "controller.replicas"
    value = "1"
  }

  set {
    name  = "server.replicas"
    value = "1"
  }

  set {
    name  = "repoServer.replicas"
    value = "1"
  }

  set {
    name  = "redis.enabled"
    value = "false"
  }

  set {
    name  = "controller.enableStatefulSet"
    value = "false"
  }
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

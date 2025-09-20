resource "kubernetes_namespace" "frontend" {
  metadata {
    name = var.frontend_namespace
  }
}

resource "kubernetes_namespace" "backend" {
  metadata {
    name = var.backend_namespace
  }
}
resource "helm_release" "ingress_nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.11.1"

  namespace        = "ingress-nginx"
  create_namespace = true

  set {
    name  = "controller.service.type"
    value = "ClusterIP"
  }
}

resource "kubernetes_manifest" "frontend_app" {
  depends_on = [kubernetes_namespace.frontend]

  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "frontend"
      namespace = var.argocd_namespace
      labels = {
        environment = var.environment
        part_of     = "vyking-app"
        component   = "frontend"
      }
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = var.repo_branch
        path           = "applications/frontend"
        helm = {
          releaseName = "frontend"
          valueFiles  = ["environments/values-${var.environment}.yaml"]
        }
      }
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.frontend_namespace
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
        path           = "applications/backend"
        helm = {
          releaseName = "backend"
          valueFiles  = ["environments/values-${var.environment}.yaml"]
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

resource "kubernetes_manifest" "selfsigned_issuer" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "ClusterIssuer"
    metadata = {
      name = "selfsigned-issuer"
    }
    spec = {
      selfSigned = {}
    }
  }
}


resource "kubernetes_manifest" "frontend_cert" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "Certificate"
    metadata = {
      name      = "frontend-cert-${var.environment}"
      namespace = var.frontend_namespace
    }
    spec = {
      secretName = "frontend-tls-${var.environment}"
      duration   = "2160h"  # 90 days
      renewBefore = "360h" # 15 days
      issuerRef = {
        name = "selfsigned-issuer"
        kind = "ClusterIssuer"
      }
      dnsNames = [
        var.frontend_host
      ]
    }
  }
}

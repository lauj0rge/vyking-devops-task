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
}

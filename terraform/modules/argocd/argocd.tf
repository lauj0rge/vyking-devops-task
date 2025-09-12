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

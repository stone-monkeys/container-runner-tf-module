resource "helm_release" "container-agent" {

  name = "container-agent"

  repository = "https://packagecloud.io/circleci/container-agent/helm"
  chart      = "container-agent"
  namespace  = var.namespace
  version    = var.chart_version

  values = [
    # "${file("${var.values}")}"
    file("${var.values}/values.yaml")
  ]

  set {
    name  = "rbac.clusterReadOnlyRole"
    value = "true"
  }
}

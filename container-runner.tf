resource "helm_release" "container-agent" {

  name = "container-agent"

  repository = "https://packagecloud.io/circleci/container-agent/helm"
  chart      = "container-agent"
  namespace  = "default"

  values = [
    "${file("values.yaml")}"
  ]

  set {
    name  = "replicaCount"
    value = 2
  }

  set {
    name  = "rbac.clusterReadOnlyRole"
    value = "true"
  }
}
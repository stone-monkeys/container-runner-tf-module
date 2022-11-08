 variable "config_path" {
    description = "path to kubeconfig file"
    type = string
    default = "~/.kube/config"
 }

  variable "namespace" {
    description = "namespace to deploy container runner to"
    type = string
    default = "default"
 }
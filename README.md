# container-runner-tf-module
Terraform module for installing container-runner to kubernetes clusters. Can be configured to take a path to kube config, a namespace and values.yaml for helm deployment of the container-agent

## Requirements

- Terraform
- helm

## How to Use

1. Drop the [example module declaration](#example-usage) shown below into a Terraform plan and fill in the variables.
2. Run the Terraform plan.


## Terraform Variables

#### Optional

| Name | Default | Description|
|------|---------|------------|
|config_path| `~/.kube/config` | Path to kubec config. |
|namespace| `default` | Namespace to deploy the container-agent to. |
|values | `values.yaml` | Values.yaml file for helm deployment of Container Runner. Resource Class Token will go here|

### Example usage

```hcl
module "container-runner" {
  source = "" #Add private git repo URL here

  values                       = "~/path/to/values/file"
  namespace                    = "container-runner"
  config_path                  = "~/path/to/kube/config"
  
}
```

## Resources Created by Terraform

### TODO 
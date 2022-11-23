# container-runner-tf-module
Terraform module for installing container-runner to kubernetes clusters. Can be configured to take a path to kube config, a namespace and values.yaml for helm deployment of the container-agent

This module was developed with the goal of helping organizations manage their use of Container Runner as IaC

## What is Container Runner?
 - https://circleci.com/docs/container-runner/

## How to install Container Runner? 
- https://circleci.com/docs/container-runner-installation/

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
|config_path| `~/.kube/config` | Path to kubecl config. |
|namespace| `default` | Namespace to deploy the container-agent to. |
|values | `.` | Values.yaml file for helm deployment of Container Runner. Resource Class Token will go here|
|chart_version| "" | Specify the exact chart version to install. If this is not specified, the latest version is installed |

### Example usage

```hcl
module "container-runner" {
  source = "github.com/stone-monkeys/container-runner-tf-module"

  values                       = "~/path/to/values/file"
  namespace                    = "container-runner"
  config_path                  = "~/path/to/kube/config"
  
}
```

## Resources Created by Terraform

### TODO 
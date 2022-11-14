terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    http = {
      source = "hashicorp/http"
    }
  }
}

module "main" {
  source = "github.com/stone-monkeys/container-runner-tf-module"

  values = "./tests/test_git_url"
}


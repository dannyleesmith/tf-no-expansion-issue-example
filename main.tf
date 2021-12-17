terraform {
  required_version = "~> 1.1"

  required_providers {
    random = {
      version = "~> 3.0"
      source  = "hashicorp/random"
    }
  }
}
module "example" {
  source = "./module_v3"

  length    = 3
  separator = "-"
}

terraform {
  required_version = "~> 1.1"

  required_providers {
    random = {
      version = "~> 3.0"
      source  = "hashicorp/random"
    }
  }
}

variable "length" {
  type = number
}

variable "separator" {
  type = string
}

resource "random_pet" "BadNaming-Here" {
  length    = var.length
  separator = var.separator
}

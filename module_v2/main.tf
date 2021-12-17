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

moved {
  from = random_pet.BadNaming-Here
  to   = random_pet.this
}

resource "random_pet" "this" {
  length    = var.length
  separator = var.separator
}

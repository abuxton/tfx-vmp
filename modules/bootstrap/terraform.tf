terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.70.0"
    }
    environment = {
      source  = "EppO/environment"
      version = "~> 1.3"
    }
  }
}

provider "tfe" {
  # Configuration options
  hostname = var.terraform_server
}

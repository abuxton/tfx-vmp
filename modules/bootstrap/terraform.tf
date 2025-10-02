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
terraform {
  cloud {
    organization = "abc-vmp"
    hostname     = "app.terraform.io"
    workspaces {
      name = "bootstrap_workspace"
    }
  }
}

provider "tfe" {
  # Configuration options
  hostname = var.terraform_server
}

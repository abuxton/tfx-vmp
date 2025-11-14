terraform {
  cloud {
    organization = "abc-vmp"
    hostname     = "app.terraform.io"
    workspaces {
      name = "vmp_workspace"
    }
  }
  required_version = "~> 1.12"
  required_providers {

    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.70.0"
    }
    environment = {
      source  = "EppO/environment"
      version = "~> 1.3"
    }
    http = {
      source  = "hashicorp/http"
      version = "~>3.5.0"
    }
  }
}

provider "environment" {
  # Configuration options
}

provider "tfe" {
  # Configuration options
}

provider "tfe" {
  alias = "organization"
  token = var.TFx_org_token

}


terraform {
  cloud {
    organization = "abc-vmp"
    hostname     = "app.terraform.io"
    workspaces {
      name = "vmp_workspace"
    }
  }
  # required_version = "~> 1.3.0"
  required_providers {

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.42.0"
    }
    environment = {
      source  = "EppO/environment"
      version = "1.3.3"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.2.1"
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


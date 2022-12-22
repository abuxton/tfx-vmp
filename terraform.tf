terraform {
  # cloud {
  #   organization = "abc-vmp"

  #   workspaces {
  #     name = "vmp_workspace"
  #   }
  # }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.38.0"
    }
    environment = {
      source  = "EppO/environment"
      version = "1.3.3"
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


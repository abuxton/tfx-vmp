terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.38.0"
    }
  }
}

provider "tfe" {
  # Configuration options
}

provider "tfe" {
  alias = "organization"
  token = var.TFx_org_token

}


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
resource "tfe_organization_token" "this" {
  organization = "my-org-name"
}
provider "tfe" {
  # Configuration options
  token = tfe_organization_token.this.token
  alias = "organization"
}

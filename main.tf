data "tfe_oauth_client" "this" {
  name         = var.oauth_name
  organization = var.organization
}



data "tfe_oauth_client" "this" {
  name         = var.oauth_name
  organization = var.organization
}


resource "tfe_workspace" "this" {
  name           = "vmp_workspace"
  organization   = var.organization
  execution_mode = "remote"
  tag_names      = ["bootstrap", "vmp"]
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    oauth_token_id = data.tfe_oauth_client.this.oauth_token_id
    branch         = var.branch
  }
}

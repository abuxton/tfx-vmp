data "tfe_oauth_client" "this" {
  name         = var.oauth_name
  organization = var.organization
}

# import {
#   to = tfe_workspace.this
#   id = "abc-vmp/vmp_workspace"
# }

resource "tfe_workspace" "this" {
  name         = "vmp_workspace"
  organization = var.organization
  # execution_mode = "remote"
  tag_names = ["bootstrap", "vmp"]
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    oauth_token_id = data.tfe_oauth_client.this.oauth_token_id
    branch         = var.branch
  }
}
resource "tfe_workspace_settings" "execution_mode" {
  workspace_id        = tfe_workspace.this.id
  execution_mode      = "remote"
  assessments_enabled = true
}
resource "tfe_workspace_settings" "assessments" {
  workspace_id        = tfe_workspace.this.id
  assessments_enabled = true
}

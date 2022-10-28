
resource "tfe_variable_set" "this" {
  name         = "vmp variable set"
  description  = "example variable set for VMP"
  organization = var.organization
}

resource "tfe_workspace_variable_set" "this" {
  workspace_id    = tfe_workspace.this.id
  variable_set_id = tfe_variable_set.this.id
}

resource "tfe_variable" "tfe_token" {
  key      = "TFE_TOKEN"
  value    = tfe_team_token.this.token
  category = "env"
  #sensitive       = true
  description     = "TFE token for deploying tfe provider resources"
  variable_set_id = tfe_variable_set.this.id
}

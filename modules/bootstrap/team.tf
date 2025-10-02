import {
  to = tfe_team.this
  id = "abc-vmp/vmp_service_team"
}
resource "tfe_team" "this" {
  name         = "vmp_service_team"
  organization = var.organization
  visibility   = "organization"
  organization_access {
    manage_workspaces = true
    manage_policies   = true
  }
}
resource "tfe_team_access" "this" {
  access       = "write"
  team_id      = tfe_team.this.id
  workspace_id = tfe_workspace.this.id
}

resource "tfe_team_token" "this" {
  team_id = tfe_team.this.id
}

resource "tfe_team" "component-env" {
  name         = "component-env"
  organization = var.organization
  visibility   = "organization"
  # organization_access {
  #   manage_workspaces = true
  #   manage_policies   = true
  # }
}
resource "tfe_team_access" "component-env" {
  access       = "read"
  team_id      = tfe_team.component-env.id
  workspace_id = tfe_workspace.component-env.id
}

# resource "tfe_team_token" "component-env" {
#   team_id = tfe_team.component-env.id
# }

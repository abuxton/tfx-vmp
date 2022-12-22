data "environment_variables" "atlas_slug" {
  filter = "^ATLAS_WORKSPACE_SLUG"
}
locals {
  list_organization_workspace = split("/", data.environment_variables.atlas_slug)
  organization                = local.list_organization_workspace["0"]
  workspace                   = local.list_organization_workspace["1"]
}

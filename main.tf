locals {
  list_organization_workspace = split("/", data.environment_variables.ATLAS.items.ATLAS_WORKSPACE_SLUG)
  organization                = local.list_organization_workspace["0"]
  workspace                   = local.list_organization_workspace["1"]
}

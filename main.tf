
locals {
  list_organization_workspace = split("/", var.ATLAS_WORKSPACE_SLUG)
  organization                = local.list_organization_workspace["0"]
  workspace                   = local.list_organization_workspace["1"]
}

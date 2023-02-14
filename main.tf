data "environment_variables" "all" {
}
data "environment_variables" "atlas_slug" {
  filter = "^ATLAS_WORKSPACE_SLUG"
}


locals {
  list_organization_workspace = split("/", data.environment_variables.atlas_slug.items.ATLAS_WORKSPACE_SLUG)
  organization                = local.list_organization_workspace["0"]
  workspace                   = local.list_organization_workspace["1"]
  audit_timestamp             = var.audit_timestamp != "" ? var.audit_timestamp : timestamp()
}

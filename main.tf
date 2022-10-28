
locals {
  organization = split("/", var.ATLAS_WORKSPACE_SLUG)
}

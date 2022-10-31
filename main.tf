

data "environment_variables" "all" {}

data "environment_variables" "ATLAS" {
  filter = "^ATLAS"
}

locals {
  list_organization_workspace = split("/", data.environment_variables.ATLAS)
  organization                = local.list_organization_workspace["0"]
  workspace                   = local.list_organization_workspace["1"]
}

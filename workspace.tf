resource "tfe_workspace" "component-env" {
  name           = "component-env"
  organization   = var.organization
  execution_mode = "local"
  tag_names      = ["component", "vmp", "environment"]
}



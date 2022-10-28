resource "tfe_workspace" "component-env" {
  name           = "component-env"
  organization   = local.organization["0"]
  execution_mode = "local"
  tag_names      = ["component", "vmp", "environment"]
}



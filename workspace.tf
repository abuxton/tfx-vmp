

module "workspacer" {
  source         = "alexbasista/workspacer/tfe"
  version        = "0.13.0"
  organization   = local.organization
  workspace_name = "component-env"
  workspace_desc = "Description of my new Workspace."
  workspace_tags = ["component", "vmp", "environment"]
  execution_mode = "local"
  tfvars = {
    teststring = "iamstring"
    testlist   = ["1", "2", "3"]
    testmap    = { "a" = "1", "b" = "2", "c" = "3" }
    /* team_access = {
    "dev-team"     = "read"
    "release-team" = "write"
    "ops-team"     = "admin"
  }*/
  }
}

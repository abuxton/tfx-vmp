
#import {
#  to = tfe_variable_set.this
#  id = "varset-41n6y3m3Mm8CjGQk"
#}
resource "tfe_variable_set" "this" {
  name         = "vmp variable set"
  description  = "example variable set for VMP"
  organization = var.organization
}

resource "tfe_workspace_variable_set" "this" {
  workspace_id    = tfe_workspace.this.id
  variable_set_id = tfe_variable_set.this.id
}


resource "tfe_variable" "tfe_token" {
  key      = "TFE_TOKEN"
  value    = tfe_team_token.this.token
  category = "env"
  #sensitive       = true
  description     = "TFE token for deploying tfe provider resources"
  variable_set_id = tfe_variable_set.this.id
}


resource "tfe_variable" "tfx_org_token" {
  key      = "TFx_org_token"
  value    = tfe_organization_token.this.token
  category = "terraform"
  #sensitive       = true
  description     = "TFx Organization token for team management"
  variable_set_id = tfe_variable_set.this.id
}
resource "tfe_variable" "oauth_name" {
  key      = "oauth_name"
  value    = var.oauth_name
  category = "terraform"
  #sensitive       = true
  description     = "oath_name required for data.tfe_oauth_client"
  variable_set_id = tfe_variable_set.this.id
}


resource "tfe_variable" "sentinel_branch" {
  count    = var.sentinel_branch != "" ? 1 : 0
  key      = "sentinel_branch"
  value    = var.sentinel_branch
  category = "terraform"
  #sensitive       = true
  description     = "Sentinel_branch for vcs sourced policy_set"
  variable_set_id = tfe_variable_set.this.id
}
resource "tfe_variable" "configure_policy_set" {
  count    = var.configure_policy_set != false ? 1 : 0
  key      = "configure_policy_set"
  value    = var.configure_policy_set
  category = "terraform"
  #sensitive       = true
  description     = "Boolean to configure policy_set"
  variable_set_id = tfe_variable_set.this.id
}
resource "tfe_variable" "sentinel_vcs_repo_identifier" {
  count    = var.sentinel_vcs_repo_identifier != "" ? 1 : 0
  key      = "sentinel_vcs_repo_identifier"
  value    = var.sentinel_vcs_repo_identifier
  category = "terraform"
  #sensitive       = true
  description     = "Sentinel VCS repo identifier to configure policy_set VCS source"
  variable_set_id = tfe_variable_set.this.id
}


data "environment_variables" "all" {
  # filter = "^ATLAS_WORKSPACE_SLUG"
}

# output "oauth" {
#   value = data.tfe_oauth_client.clients
# }

output "vmp_bootstap_workspace_url" {
  value = "https://${var.terraform_server}/app/${var.organization}/workspaces/vmp_workspace"
}

output "environment_variables_all" {
  value = data.environment_variables.all.items
}


# output "oauth" {
#   value = data.tfe_oauth_client.clients
# }

output "vmp_bootstap_workspace_url" {
  value = "https://${var.terraform_server}/app/${var.organization}/workspaces/vm_workspace"
}

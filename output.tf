# output "test-agent-token" {
#   value     = nonsensitive(tfe_agent_token.test-agent-token.token)
#   sensitive = false
# }
output "environment_variables_all" {
  value = data.environment_variables.all.items
}

output "test-agent-token" {
  value     = nonsensitive(tfe_agent_token.test-agent-token.token)
  sensitive = true
}

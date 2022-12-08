output "test-agent-token" {
  value     = tfe_agent_token.test-agent-token.token
  sensitive = true
}

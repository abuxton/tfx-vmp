
variable "oauth_name" {
  type        = string
  description = "(Required String) Name of OAuth VCS connection you created"
}
variable "terraform_server" {
  type        = string
  description = "(Optional String) defaults to app.terraform.io, but otherwise the FQDN of your TFE server"
  default     = "app.terraform.io"
}
variable "TFx_org_token" {
  type        = string
  description = "(Optional String) Token for the Terraform server organization level token"
}

variable "sentinel_vcs_repo_identifier" {
  type        = string
  description = "(Optional String) username/projectname of the VCS project or repository to source policy sets"
  default     = "" # used as count flag
}
variable "sentinel_branch" {
  type        = string
  default     = "main"
  description = "(Optional String) VCS repo branch defaults to main"
}

variable "configure_policy_set" {
  default     = false
  type        = bool
  description = "(Optional Bool) Flag to control deployment of policy sets."
}

variable "agent_pool_set" {
  default     = false
  type        = bool
  description = "(Optional Bool) Flag to control of agent pool"
}

variable "audit_timestamp" {
  default     = ""
  type        = string
  description = "(Optional String) enter the date in timestampe format 'yyyy-mm-ddT00:00:00Z' "
}

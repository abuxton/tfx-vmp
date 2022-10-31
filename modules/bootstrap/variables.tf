variable "oauth_name" {
  type        = string
  description = "(Required String) Name of OAuth VCS connection you created"
}
variable "organization" {
  type        = string
  description = "(Required String) Organization name"
}
variable "vcs_repo_identifier" {
  type        = string
  description = "(Required String) username/projectname of the VCS project or repository"
}
variable "terraform_server" {
  type        = string
  description = "(Optional String) defaults to app.terraform.io, but otherwise the FQDN of your TFE server"
  default     = "app.terraform.io"
}
variable "branch" {
  type        = string
  default     = "main"
  description = "(Optional String) Branch to deploy VCS source."
}
variable "sentinel_branch" {
  type        = string
  default     = ""
  description = "(Optional String) Branch to deploy VCS sourced policy_set."
}
variable "configure_policy_set" {
  default     = false
  type        = bool
  description = "(Optional Bool) Flag to control deployment of policy sets."
}

variable "sentinel_vcs_repo_identifier" {
  type        = string
  description = "(Optional String) username/projectname of the VCS project or repository to source policy sets"
  default     = "" # used as count flag
}

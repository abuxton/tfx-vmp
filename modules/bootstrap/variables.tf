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


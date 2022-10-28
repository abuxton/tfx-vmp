variable "oauth_name" {
  type        = string
  description = "(Required) Name of OAuth VCS connection you created"
}
variable "organization" {
  type        = string
  description = "(Required) Organization name"
}
variable "vcs_repo_identifier" {
  type        = string
  description = "(Required) username/projectname of the VCS project or repository"
}
variable "terraform_server" {
  type        = string
  description = "(Optional) defaults to app.terraform.io, but otherwise the FQDN of your TFE server"
  default     = "app.terraform.io"
}

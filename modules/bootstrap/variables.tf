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

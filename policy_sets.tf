# data "tfe_oauth_client" "this" {
#   name         = var.oauth_name
#   organization = local.organization
#   provider     = tfe.organization
# }
# data "tfe_slug" "generic" {
#   count = var.configure_policy_set != false ? 1 : 0
#   // point to the local directory where the policies are located.
#   source_path = "policy_sets/generic"
# }

# resource "tfe_policy_set" "generic" {
#   count        = var.configure_policy_set != false ? 1 : 0
#   name         = "vmp_generic"
#   description  = "a generic policy"
#   organization = local.organization
#   global       = true

#   // reference the tfe_slug data source.
#   slug = data.tfe_slug.generic["0"]
# }

# resource "tfe_policy_set" "vmp_vcs_storage_validation" {
#   count = var.configure_policy_set != false && var.sentinel_vcs_repo_identifier != "" ? 1 : 0

#   name          = "vmp_initial_policy_set"
#   description   = "A vmp pattern deployed policy set"
#   organization  = local.organization
#   global        = true
#   policies_path = "./policy_sets/storage_validation"

#   vcs_repo {
#     identifier         = var.sentinel_vcs_repo_identifier
#     branch             = var.sentinel_branch
#     ingress_submodules = false
#     oauth_token_id     = data.tfe_oauth_client.this.oauth_token_id
#   }
# }


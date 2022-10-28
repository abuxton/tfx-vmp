# vmp-bootstrap

This module is stand alone and intended to be executed with the terraform client to bootstrap the vmp workspace to manage all other resources for a organization.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace) | resource |
| [tfe_oauth_client.clients](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/oauth_client) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oauth_name"></a> [oauth\_name](#input\_oauth\_name) | (Required) Name of OAuth VCS connection you created | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Organization name | `string` | n/a | yes |
| <a name="input_terraform_server"></a> [terraform\_server](#input\_terraform\_server) | (Optional) defaults to app.terraform.io, but otherwise the FQDN of your TFE server | `string` | `"app.terraform.io"` | no |
| <a name="input_vcs_repo_identifier"></a> [vcs\_repo\_identifier](#input\_vcs\_repo\_identifier) | (Required) username/projectname of the VCS project or repository | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vmp_bootstap_workspace_url"></a> [vmp\_bootstap\_workspace\_url](#output\_vmp\_bootstap\_workspace\_url) | n/a |
<!-- END_TF_DOCS -->
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
| [tfe_oauth_client.clients](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/oauth_client) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oauth_name"></a> [oauth\_name](#input\_oauth\_name) | (Required) Name of OAuth VCS connection you created | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Organization name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oauth"></a> [oauth](#output\_oauth) | n/a |
<!-- END_TF_DOCS -->

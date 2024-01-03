<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_environment"></a> [environment](#requirement\_environment) | 1.3.3 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_environment"></a> [environment](#provider\_environment) | 1.3.3 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization_token.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/organization_token) | resource |
| [tfe_team.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team) | resource |
| [tfe_team_access.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_access) | resource |
| [tfe_team_token.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_token) | resource |
| [tfe_variable.configure_policy_set](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.oauth_name](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.sentinel_branch](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.sentinel_vcs_repo_identifier](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.tfe_token](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.tfx_org_token](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable_set) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace) | resource |
| [tfe_workspace_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace_variable_set) | resource |
| [environment_variables.all](https://registry.terraform.io/providers/EppO/environment/1.3.3/docs/data-sources/variables) | data source |
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/oauth_client) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | (Optional String) Branch to deploy VCS source. | `string` | `"main"` | no |
| <a name="input_configure_policy_set"></a> [configure\_policy\_set](#input\_configure\_policy\_set) | (Optional Bool) Flag to control deployment of policy sets. | `bool` | `false` | no |
| <a name="input_oauth_name"></a> [oauth\_name](#input\_oauth\_name) | (Required String) Name of OAuth VCS connection you created | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required String) Organization name | `string` | n/a | yes |
| <a name="input_sentinel_branch"></a> [sentinel\_branch](#input\_sentinel\_branch) | (Optional String) Branch to deploy VCS sourced policy\_set. | `string` | `""` | no |
| <a name="input_sentinel_vcs_repo_identifier"></a> [sentinel\_vcs\_repo\_identifier](#input\_sentinel\_vcs\_repo\_identifier) | (Optional String) username/projectname of the VCS project or repository to source policy sets | `string` | `""` | no |
| <a name="input_terraform_server"></a> [terraform\_server](#input\_terraform\_server) | (Optional String) defaults to app.terraform.io, but otherwise the FQDN of your TFE server | `string` | `"app.terraform.io"` | no |
| <a name="input_vcs_repo_identifier"></a> [vcs\_repo\_identifier](#input\_vcs\_repo\_identifier) | (Required String) username/projectname of the VCS project or repository | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment_variables_all"></a> [environment\_variables\_all](#output\_environment\_variables\_all) | n/a |
| <a name="output_vmp_bootstap_workspace_url"></a> [vmp\_bootstap\_workspace\_url](#output\_vmp\_bootstap\_workspace\_url) | n/a |
<!-- END_TF_DOCS -->
# vmp-bootstrap

This module is stand alone and intended to be executed with the terraform client to bootstrap the vmp workspace to manage all other resources for a organization.

## Pre-requisites

The modules pre-requisites are outlined in the main project [README.md](../../README.md)

## Usage

* We suggest you review the code in this folder.
* update `terraform.auto.tfvars.example` with your values
* For ease of use rename to `terraform.auto.tfvars.example` to `terraform.auto.tfvars`

**Note: the `*.tfvars` are excluded by way of .gitignore from version control.**

```
terraform init
run terraform plan and review the intended plan correct any errors
# now run the following
terraform plan -out=vmp-bootstrap.tfplan
terraform apply "vmp-bootstrap.tfplan"
# review the outputs
terraform state list
terraform output
# navigate to the vmp_bootstrap_workspace_url in your browser
terraform output vmp_bootstap_workspace_url
"https://app.terraform.io/app/example/workspaces/vm_workspace"

```

You will see the resources as documented below are created and you can review these in the tfe provider <https://registry.terraform.io/providers/hashicorp/tfe/latest> documentation.

### Destroy and Destruction

To destroy the resources created by the bootstrap root module. First ensure you have destroyed or are at least aware of the resources being created by the resource `tfe_workspace.this`.

``` json

 # tfe_workspace.this will be created
  + resource "tfe_workspace" "this" {
...
      + name                          = "vmp_workspace"
      + operations                    = (known after apply)
      + organization                  = (known after apply)
... #truncated

```

To destroy the resources created see the destroy and destruction section of the [root module README.md](../../README.md#destroy-and-destruction)

To `destroy` or `taint` individual resources (used to refresh tokens for example) see <https://developer.hashicorp.com/terraform/cli/commands/taint>


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
| [tfe_team.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team) | resource |
| [tfe_team_access.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_access) | resource |
| [tfe_team_token.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_token) | resource |
| [tfe_variable.tfe_token](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable_set) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace) | resource |
| [tfe_workspace_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace_variable_set) | resource |
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

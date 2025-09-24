# tfc-vmp




help! remove later

It's assumed you have access to a Terraform service platform such as Terraform Enterprise (TFE) or Terraform Cloud(TFC).

Vending Machine Pattern (VMP) for creating an organisation, workspaces, and teams on a Terraform service platform (TFC/TFE)

This Terraform root module is based on the concepts of Crawl -> Walk -> Run, so it also includes steps to bootstrap this repo into the initial workspace in your organization.

## Requirements

Access to the TFC || TFE platform with an organization <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/organizations> and a user token <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/users#api-tokens>

The terraform client installed locally <https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli>

A git fork or clone of this repository in a publicly source-able project.

### Bootstrapping

Before you can connect a Version Control Service (VCS) based workflow you need a VCS connection in TFC/TFE. <https://developer.hashicorp.com/terraform/enterprise/vcs>

You may or may not need SSH keys (optional)<https://developer.hashicorp.com/terraform/enterprise/vcs/github#step-4-on-terraform-cloud-set-up-ssh-keypair-optional>

Once you have a VCS connection configured traverse to the `./modules/bootstrap` folder and read the [README.md](./modules/bootstrap/README.md) there.

## Usage

One you have completed the [bootstrapping](./README.md#bootstrapping) this project provides resources to then build workspaces, policy_sets and further team access.

This project is to facilitate a demonstration of terraform service capabilities allowing for rapid deployment and removal of the resources.

The examples follow the learnings from <https://developer.hashicorp.com/terraform/cloud-docs/recommended-practices>

### Examples

Due to the nature of this project the [Examples](./examples/README.md) folder contains declarative examples, and some examples for additional usage or illustration.

### Policy Sets (Sentinel) Deployment

The example includes dynamic resources for deploying `policy_set` resources.

The variable `configure_policy_set` will deploy the initial generic policy set <./policy_sets/generic/sentinel.hcl>

Additionally configuring `sentinel_vcs_repo_identifier=<git organization>/<git project>` or `sentinel_vcs_repo_identifier = $(git config  --get remote.origin.url | cut -d : -f2 | cut -d'.' -f1)` will then deploy the <./policy_sets/storage_validation/sentinel.hcl> from this repository has source.

These variable should be set in the Terraform service UI (TFC/TFE) <https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables>

**NOTE: The policies referenced are only available over a pubic HTTPS endpoint**

## Destroy and Destruction

The resources listed below are created as part of a standard Version Control Service (VCS) driven workflow during the bootstrapping process.

To destroy the resources you will require sufficient access to the created workspace `vmp_workspace`. Follow the documentation <https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-destroy?in=terraform%2Fcloud-get-started>

Once the resources are destroyed you can run a Terraform client based destroy using the [bootstrap](./modules/bootstrap) folder, or simply remove the workspace.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_environment"></a> [environment](#requirement\_environment) | 1.3.3 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.2.1 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_environment"></a> [environment](#provider\_environment) | 1.3.3 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.2.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.38.0 |
| <a name="provider_tfe.organization"></a> [tfe.organization](#provider\_tfe.organization) | 0.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_agent_pool.test-agent-pool](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/agent_pool) | resource |
| [tfe_agent_token.test-agent-token](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/agent_token) | resource |
| [tfe_policy_set.generic](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/policy_set) | resource |
| [tfe_policy_set.vmp_vcs_storage_validation](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/policy_set) | resource |
| [tfe_team.component-env](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team) | resource |
| [tfe_team_access.component-env](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_access) | resource |
| [tfe_workspace.component-env](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace) | resource |
| [environment_variables.all](https://registry.terraform.io/providers/EppO/environment/1.3.3/docs/data-sources/variables) | data source |
| [environment_variables.atlas_slug](https://registry.terraform.io/providers/EppO/environment/1.3.3/docs/data-sources/variables) | data source |
| [http_http.tfc_audit_trail](https://registry.terraform.io/providers/hashicorp/http/3.2.1/docs/data-sources/http) | data source |
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/oauth_client) | data source |
| [tfe_slug.generic](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/slug) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_TFx_org_token"></a> [TFx\_org\_token](#input\_TFx\_org\_token) | (Optional String) Token for the Terraform server organization level token | `string` | n/a | yes |
| <a name="input_agent_pool_set"></a> [agent\_pool\_set](#input\_agent\_pool\_set) | (Optional Bool) Flag to control of agent pool | `bool` | `false` | no |
| <a name="input_audit_timestamp"></a> [audit\_timestamp](#input\_audit\_timestamp) | (Optional String) enter the date in timestampe format 'yyyy-mm-ddT00:00:00Z' | `string` | `""` | no |
| <a name="input_configure_policy_set"></a> [configure\_policy\_set](#input\_configure\_policy\_set) | (Optional Bool) Flag to control deployment of policy sets. | `bool` | `false` | no |
| <a name="input_oauth_name"></a> [oauth\_name](#input\_oauth\_name) | (Required String) Name of OAuth VCS connection you created | `string` | n/a | yes |
| <a name="input_sentinel_branch"></a> [sentinel\_branch](#input\_sentinel\_branch) | (Optional String) VCS repo branch defaults to main | `string` | `"main"` | no |
| <a name="input_sentinel_vcs_repo_identifier"></a> [sentinel\_vcs\_repo\_identifier](#input\_sentinel\_vcs\_repo\_identifier) | (Optional String) username/projectname of the VCS project or repository to source policy sets | `string` | `""` | no |
| <a name="input_terraform_server"></a> [terraform\_server](#input\_terraform\_server) | (Optional String) defaults to app.terraform.io, but otherwise the FQDN of your TFE server | `string` | `"app.terraform.io"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_atlas_workspace_slug"></a> [atlas\_workspace\_slug](#output\_atlas\_workspace\_slug) | n/a |
| <a name="output_environment_variables_all"></a> [environment\_variables\_all](#output\_environment\_variables\_all) | n/a |
| <a name="output_test-agent-token"></a> [test-agent-token](#output\_test-agent-token) | n/a |
| <a name="output_tfc_audit_trail"></a> [tfc\_audit\_trail](#output\_tfc\_audit\_trail) | n/a |
<!-- END_TF_DOCS -->

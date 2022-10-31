# tfc-vmp

It's assumed you have access to a Terraform service platform such as Terraform Enterprise (TFE) or Terraform Cloud(TFC).

Vending Machine Pattern (VMP) for creating an organisation, workspaces, and teams on a Terraform service platform (TFC/TFE)

This Terraform root module is based on the concepts of Crawl -> Walk -> Run, so it also includes steps to bootstrap this repo into the initial workspace in your organization.

## Requirements

Access to the TFC || TFE platform with an organization <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/organizations> and a user token <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/users#api-tokens>

The terraform client installed locally <https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli>

### Bootstrapping

Before you can connect a Version Control Service (VCS) based workflow you need a VCS connection in TFC/TFE. <https://developer.hashicorp.com/terraform/enterprise/vcs>

You may or may not need SSH keys (optional)<https://developer.hashicorp.com/terraform/enterprise/vcs/github#step-4-on-terraform-cloud-set-up-ssh-keypair-optional>

Once you have a VCS connection configured traverse to the `./modules/bootstrap` folder and read the [README.md](./modules/bootstrap/README.md) there.

## Usage

One you have completed the [bootstrapping](./README.md#bootstrapping) this project provides resources to then build workspaces, policy_sets and further team access.

This project is to facilitate a demonstration of terraform service capabilities allowing for rapid deployment and removal of the resources.

The examples follow the learnings from <https://developer.hashicorp.com/terraform/cloud-docs/recommended-practices>

# Destroy and Destruction

The resources listed below are created as part of a standard Version Control Service (VCS) driven workflow during the bootstrapping process.

To destroy the resources you will require sufficient access to the created workspace `vmp_workspace`. Follow the documentation <https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-destroy?in=terraform%2Fcloud-get-started>

Once the resources are destroyed you can run a Terraform client based destroy using the [bootstrap](./modules/bootstrap) folder, or simply remove the workspace.


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
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/oauth_client) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oauth_name"></a> [oauth\_name](#input\_oauth\_name) | (Required) Name of OAuth VCS connection you created | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Organization name | `string` | n/a | yes |
| <a name="input_terraform_server"></a> [terraform\_server](#input\_terraform\_server) | (Optional) defaults to app.terraform.io, but otherwise the FQDN of your TFE server | `string` | `"app.terraform.io"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

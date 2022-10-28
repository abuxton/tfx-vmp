# tfc-vmp
It's assumed you have access to a Terraform service platform such as Terraform Enterprise (TFE) or Terraform Cloud(TFC).

Vending Machine Pattern (VMP) for creating an organisation, workspaces, and teams on a Terraform service platform (TFC/TFE)

This Terraform root module is based on the concepts of Crawl -> Walk -> Run, so it also includes steps to bootstrap this repo into the initial workspace in your organization.

## Requirements

Access to the TFC || TFE platform with an organization <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/organizations> and a user token <https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/users#api-tokens>

The terraform client installed locally <https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli>

## Bootstrapping

Before you can connect a Version Control Service (VCS) based workflow you need a VCS connection in TFC/TFE. <https://developer.hashicorp.com/terraform/enterprise/vcs>

You may or may not need SSH keys (optional)<https://developer.hashicorp.com/terraform/enterprise/vcs/github#step-4-on-terraform-cloud-set-up-ssh-keypair-optional>

Once you have a VCS connection configured traverse to the `./modules/bootstrap` folder and read the [README.md](./modules/bootstrap/README.md) there.




<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

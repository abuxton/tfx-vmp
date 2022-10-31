# taken from https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/sentinel.hcl



module "tfplan-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "validate-variables-have-descriptions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/validate-variables-have-descriptions.sentinel"
    enforcement_level = "advisory"
}


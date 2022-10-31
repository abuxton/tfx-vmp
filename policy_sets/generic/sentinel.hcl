# taken from https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/sentinel.hcl



module "tfplan-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "generic" {
    source = "./policy.sentinel"
    enforcement_level = "advisory"
	#enforcement_level = "soft-manditory"
	#enforcement_level = "hard-manditory"
}


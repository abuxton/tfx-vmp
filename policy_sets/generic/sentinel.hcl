# taken from https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/sentinel.hcl
module "tfconfig-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "registry-functions" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/registry-functions/registry-functions.sentinel"
}

policy "check-external-http-api" {
    source = "https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/check-external-http-api.sentinel"
    enforcement_level = "advisory"
    # enforcement_level = "soft-mandatory"
    # enforcement_level = "hard-mandatory"
}



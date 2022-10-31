# taken from https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/http-examples/sentinel.hcl


policy "generic" {
    source = "./policy.sentinel"
    enforcement_level = "advisory"
	#enforcement_level = "soft-mandatory"
	#enforcement_level = "hard-mandatory"
}


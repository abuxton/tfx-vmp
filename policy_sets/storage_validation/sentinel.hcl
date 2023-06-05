# https://developer.hashicorp.com/terraform/registry/policy-libraries/publishing

policy "blob-public-access-level-set-to-private" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/azure-storage-terraform/1.0.2/policy/blob-public-access-level-set-to-private.sentinel?checksum=sha256:9a99176020132c73392e88347705887045f7e34c9e5e70d991be5967d568ceb0"
  enforcement_level = "advisory"
	#enforcement_level = "soft-mandatory"
	#enforcement_level = "hard-mandatory"
}

policy "deny-anonymous-or-public-bucket-access" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/gcp-storage-terraform/1.0.2/policy/deny-anonymous-or-public-bucket-access.sentinel?checksum=sha256:fd9ca33758bb12b4eb3bdd498667aaacedf35f1067e83cae8d2016f770958fa5"
  enforcement_level = "advisory"
	#enforcement_level = "soft-mandatory"
	#enforcement_level = "hard-mandatory"
}

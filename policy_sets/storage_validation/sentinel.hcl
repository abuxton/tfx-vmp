# https://developer.hashicorp.com/terraform/registry/policy-libraries/publishing

policy "blob-public-access-level-set-to-private" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/azure-storage-terraform/1.0.2/policy/blob-public-access-level-set-to-private.sentinel?checksum=sha256:9a99176020132c73392e88347705887045f7e34c9e5e70d991be5967d568ceb0"
  enforcement_level = "advisory"
}

policy "deny-anonymous-or-public-bucket-access" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/gcp-storage-terraform/1.0.2/policy/deny-anonymous-or-public-bucket-access.sentinel?checksum=sha256:fd9ca33758bb12b4eb3bdd498667aaacedf35f1067e83cae8d2016f770958fa5"
  enforcement_level = "advisory"
}

policy "s3-should-have-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/SPHTech-Platform/aws/1.0.5/policy/s3-should-have-encryption-enabled.sentinel?checksum=sha256:0b7d6e0e010e019c969101244d6de952da94590e98a7704af7a06f823cf3f1ce"
  enforcement_level = "advisory"
}

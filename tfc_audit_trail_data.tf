
data "http" "tfc_audit_trail" {
  #https://developer.hashicorp.com/terraform/cloud-docs/api-docs/audit-trails
  url    = "https://app.terraform.io/api/v2/organization/audit-trail?page[number]=1"
  method = "GET"
  request_headers = {
    Authorization = "Bearer ${var.TFx_org_token}"
  }
}

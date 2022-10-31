data "environment_variables" "all" {}

data "environment_variables" "ATLAS" {
  filter = "^ATLAS"
}

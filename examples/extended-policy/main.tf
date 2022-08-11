terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">=0.40.0"
    }
  }
}

provider "snowflake" {
  role = "SECURITYADMIN"
}

module "network_policy" {
  source = "../../"

  name = "simple-policy"

  allowed_ips = ["172.218.20.30/32"]
  blocked_ips = ["124.74.33.12/32"]

  attach_policy   = true
  set_for_account = false
  users_list      = ["attach-policy-to-me"]
}

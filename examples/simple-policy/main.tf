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
}

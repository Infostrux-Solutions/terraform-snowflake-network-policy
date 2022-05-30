module "network_policy" {
  source = "../../../terraform-sf-network-policy"

  name = "simple-policy"

  allowed_ips = ["172.218.20.30/32"]
}

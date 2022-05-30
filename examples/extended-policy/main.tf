module "network_policy" {
  source = "../../../terraform-sf-network-policy"

  name    = "simple-policy"
  comment = "Provide some detail on what this policy is doing."

  allowed_ips = ["172.218.20.30/32"]
  blocked_ips = ["124.74.33.12/32"]

  attach_policy   = true
  set_for_account = false
  users_list      = ["attach-policy-to-me"]
}

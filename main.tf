resource "snowflake_network_policy" "policy" {
  name    = var.name
  comment = var.comment

  allowed_ip_list = var.allowed_ips
  blocked_ip_list = var.blocked_ips
}

resource "snowflake_network_policy_attachment" "attach" {
  count = var.attach_policy ? 1 : 0

  network_policy_name = snowflake_network_policy.policy.name
  set_for_account     = var.set_for_account
  users               = var.users_list
}

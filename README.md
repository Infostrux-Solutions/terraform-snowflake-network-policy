# Snowflake Network Policy Terraform Module

Terraform module which creates network policy resources on Snowflake.

## Examples
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_network_policy.network_policy](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/network_policy) | resource |
| [snowflake_network_policy_attachment.attach](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/network_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_ips"></a> [allowed\_ips](#input\_allowed\_ips) | A list of IP/CIDRs to allow access into the Snowflake account. (This will by default block everything else) | `list(string)` | `[]` | no |
| <a name="input_attach_policy"></a> [attach\_policy](#input\_attach\_policy) | Create the policy attachment at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_blocked_ips"></a> [blocked\_ips](#input\_blocked\_ips) | A list of IP/CIDRs to block access into the Snowflake account. (Do not add 0.0.0.0/0 to the list) | `list(string)` | `[]` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | Comment (description) to add to the network policy. | `string` | `"IPs allowed|blocked in the Snowflake account."` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to apply to the Snowflake network policy. | `string` | n/a | yes |
| <a name="input_set_for_account"></a> [set\_for\_account](#input\_set\_for\_account) | Set this policy attachment on the account level. (true\|false) | `bool` | `false` | no |
| <a name="input_users_list"></a> [users\_list](#input\_users\_list) | A list of users that the policy will be attached to. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allowed_ips"></a> [allowed\_ips](#output\_allowed\_ips) | Allowed IP list |
| <a name="output_blocked_ips"></a> [blocked\_ips](#output\_blocked\_ips) | Blocked IPs list |
| <a name="output_users_list"></a> [users\_list](#output\_users\_list) | Users list |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Authors

Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com)

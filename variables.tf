# Policy
variable "name" {
  type        = string
  description = "The name to apply to the Snowflake network policy."
}

variable "comment" {
  type        = string
  description = "Comment (description) to add to the network policy."
  default     = "IPs allowed|blocked in the Snowflake account."
}

variable "allowed_ips" {
  type        = list(string)
  description = "A list of IP/CIDRs to allow access into the Snowflake account. (This will by default block everything else)"
  default     = []
}

variable "blocked_ips" {
  type        = list(string)
  description = "A list of IP/CIDRs to block access into the Snowflake account. (Do not add 0.0.0.0/0 to the list)"
  default     = []
}

# Attachment
variable "attach_policy" {
  type        = bool
  description = "Create the policy attachment at the same time. (true|false)"
  default     = false
}

variable "set_for_account" {
  type        = bool
  description = "Set this policy attachment on the account level. (true|false)"
  default     = false
}

variable "users_list" {
  type        = list(string)
  description = "A list of users that the policy will be attached to."
  default     = []
}

variable "alert_channel_lookup" {
  description = <<EOT
Map of alert_channel_lookup, attributes below
Required:
    - name
Optional:
    - account_id
EOT

  type = map(object({
    name       = string
    account_id = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.alert_channel_lookup : (
        alltrue([for item in v.config : (item.auth_type == null || (contains(["BASIC"], item.auth_type)))])
      )
    ])
    error_message = "must be one of: \"BASIC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_channel_lookup : (
        alltrue([for item in v.config : (item.region == null || (contains(["US", "EU", "JP"], item.region)))])
      )
    ])
    error_message = "must be one of: \"US\", \"EU\", \"JP\""
  }
}


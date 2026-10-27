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
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


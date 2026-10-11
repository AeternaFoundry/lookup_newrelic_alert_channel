output "alert_channel_lookup_id" {
  description = "Map of id values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no id are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_channel_lookup_account_id" {
  description = "Map of account_id values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.account_id if v.account_id != null }
}
output "alert_channel_lookup_config" {
  description = "Map of config values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no config are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.config if v.config != null && length(v.config) > 0 }
}
output "alert_channel_lookup_name" {
  description = "Map of name values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no name are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alert_channel_lookup_policy_ids" {
  description = "Map of policy_ids values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no policy_ids are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.policy_ids if v.policy_ids != null && length(v.policy_ids) > 0 }
}
output "alert_channel_lookup_type" {
  description = "Map of type values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup except keys with no type are omitted"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}


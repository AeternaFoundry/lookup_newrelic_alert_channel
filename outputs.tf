output "alert_channel_lookup_id" {
  description = "Map of id values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.id }
}
output "alert_channel_lookup_account_id" {
  description = "Map of account_id values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.account_id }
}
output "alert_channel_lookup_config" {
  description = "Map of config values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.config }
}
output "alert_channel_lookup_name" {
  description = "Map of name values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.name }
}
output "alert_channel_lookup_policy_ids" {
  description = "Map of policy_ids values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.policy_ids }
}
output "alert_channel_lookup_type" {
  description = "Map of type values across all alert_channel_lookup, keyed the same as var.alert_channel_lookup"
  value       = { for k, v in data.newrelic_alert_channel.alert_channel_lookup : k => v.type }
}


data "newrelic_alert_channel" "alert_channel_lookup" {
  for_each = var.alert_channel_lookup

  name       = each.value.name
  account_id = each.value.account_id
}


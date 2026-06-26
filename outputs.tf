output "log_analytics_workspace_id" {
  value       = try(azurerm_log_analytics_workspace.this["this"].id, null)
  description = "The ID of the deployed Log Analytics workspace"
}

output "diagnostic_setting_name" {
  value = azurerm_monitor_diagnostic_setting.this.name
  description = "The ID of the deployed diagnostic setting"
}

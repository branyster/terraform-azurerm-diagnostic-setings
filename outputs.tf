output "log_analytics_workspace_id" {
  value       = length(azurerm_log_analytics_workspace.this) > 0 ? azurerm_log_analytics_workspace.this[0].id : null
  description = "The ID of the deployed Log Analytics workspace"
}

output "diagnostic_setting_name" {
  value       = azurerm_monitor_diagnostic_setting.this.name
  description = "The ID of the deployed diagnostic setting"
}
output "log_analytics_workspace_id" {
   value = azurerm_log_analytics_workspace.this.id
   description = "The ID of the deployedLog Analytics workspace"
}

output "diagnostic_setting_name" {
  value = azurerm_monitor_diagnostic_setting.this.name
  description = "The ID of the deployed diagnostic setting"
}

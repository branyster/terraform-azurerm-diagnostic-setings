locals {
  workspace_id = var.deploy_log_analytics_workspace ? azurerm_log_analytics_workspace.this[0].id : var.log_analytics_workspace_resource_id
}

resource "azurerm_log_analytics_workspace" "this" {
  count = var.deploy_log_analytics_workspace ? 1 : 0

  name                = "log-${var.environment}-${var.location_short}-${var.common_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = var.retention_in_days
}

resource "azurerm_monitor_diagnostic_setting" "this" {
  name               = "diagsetting-${var.resource_name}"
  target_resource_id = var.target_resource_id

  log_analytics_workspace_id = local.workspace_id

  enabled_log {
    category_group = "allLogs"
  }

  enabled_metric {
    category = "AllMetrics"
  }
}
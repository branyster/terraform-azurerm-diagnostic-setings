# provider block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.56.0"
    }
  }
}

# Creates a log analytics workspace and diagnostic settings for a given resource. The module will create a log analytics workspace if the deploy_log_analytics_workspace variable is set to true. If the variable is set to false, the module will use the log_analytics_workspace_resource_id variable to link to an existing log analytics workspace.
resource "azurerm_log_analytics_workspace" "this" {
  for_each = {
    for s in ["this"] : s => s
    if var.deploy_log_analytics_workspace == true
  }

  name                = "log-${var.environment}-${var.location_short}-${var.common_name}"
  resource_group_name = "var.resource_group_name"
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = var.retention_in_days
}

resource "azurerm_monitor_diagnostic_setting" "this" {
  name                       = "diagsetting-${var.resource_name}"
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = var.deploy_log_analytics_workspace ? azurerm_log_analytics_workspace.this["this"].id : var.log_analytics_workspace_resource_id

  enabled_log {
    category_group = "alllogs"
  }
}

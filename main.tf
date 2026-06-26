terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.56.0"
    }
  }
}

output "log_analytics_workspace_id" {
  value       = try(azurerm_log_analytics_workspace.this["this"].id, null)
  description = "The ID of the deployed Log Analytics workspace"
}

  name                = "log-${var.environment}-${var.location_short}-${var.common_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = var.retention_in_days
}

resource "azurerm_monitor_diagnostic_setting" "this" {
  name               = "diagsetting-${var.resource_name}"
  target_resource_id = var.target_resource_id

  log_analytics_workspace_id = var.deploy_log_analytics_workspace
    ? azurerm_log_analytics_workspace.this["this"].id
    : var.log_analytics_workspace_resource_id

  enabled_log {
    category_group = "alllogs"
  }
}

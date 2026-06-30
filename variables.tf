variable "environment" {
  type        = string
  description = "The environment used for the deployment"
}

variable "location" {
  type        = string
  description = "The location used for the deployment"
}

variable "location_short" {
  type        = string
  description = "The short form of the location used for the deployment"
}

variable "common_name" {
  type        = string
  description = "The common name used for the deployment"
  default     = "mycompany"
}
variable "retention_in_days" {
  type        = number
  description = "The number of days to retain logs"
}

variable "resource_name" {
  type        = string
  description = "The name for the resource"
}

variable "target_resource_id" {
  type        = string
  description = "Target resource ID of the resource where the diagnostic setting is created"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "deploy_log_analytics_workspace" {
  type        = bool
  description = "Enable or disable the creation of a log analytics workspace. If set to false, the log_analytics_workspace_resource_id variable must be provided."
}

variable "log_analytics_workspace_resource_id" {
  type        = string
  default     = null
  description = "The resource ID of an existing Log Analytics workspace"

  validation {
    condition = (
      var.deploy_log_analytics_workspace ||
      var.log_analytics_workspace_resource_id != null
    )
    error_message = "You must provide log_analytics_workspace_resource_id when deploy_log_analytics_workspace is false."
  }
}
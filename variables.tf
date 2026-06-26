variable "environment" {
  type = string
  description = "The environment for the resources (e.g., dev, test, prod)"
}

variable "location" {
  type = string
  description = "The location for the resources"        
}

variable "location_short" {
  type = string
  description = "A short name for the location"
}

variable "common_name" {
  type = string
  description = "A common name for the resources"
}

variable "retention_in_days" {
  type = number
  description = "The number of days to retain logs"                 
}

variable "resource_name" {
  type = string
  description = "The name for the resource"
}

variable "target_resource_id" {
  type = string
  description = "The resource ID of the target resource to monitor"
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group where the resources will be deployed"
}

variable "deploy_log_analytics_workspace" {
  type = bool
  description = "Whether to deploy a Log Analytics workspace"
}

variable "log_analytics_workspace_resource_id" {
  type = string
  default = null
  description = "The resource ID of the existing Log Analytics workspace"
}
variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "location_short" {
  type = string
}

variable "common_name" {
  type = string
}

variable "retention_in_days" {
  type = number
}

variable "resource_name" {
  type = string
}

variable "target_resource_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "deploy_log_analytics_workspace" {
  type = bool
}

variable "log_analytics_workspace_resource_id" {
  type = string
  default = null    
}
Learning Terraform Modules

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_monitor_diagnostic_setting.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The common name used for the deployment | `string` | n/a | yes |
| <a name="input_deploy_log_analytics_workspace"></a> [deploy\_log\_analytics\_workspace](#input\_deploy\_log\_analytics\_workspace) | Enable or disable the creation of a log analytics workspace. If set to false, the log\_analytics\_workspace\_resource\_id variable must be provided. | `bool` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment used for the deployment | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location used for the deployment | `string` | n/a | yes |
| <a name="input_location_short"></a> [location\_short](#input\_location\_short) | The short form of the location used for the deployment | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_id"></a> [log\_analytics\_workspace\_resource\_id](#input\_log\_analytics\_workspace\_resource\_id) | The resource ID of the existing Log Analytics workspace | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_resource_name"></a> [resource\_name](#input\_resource\_name) | The name for the resource | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The number of days to retain logs | `number` | n/a | yes |
| <a name="input_target_resource_id"></a> [target\_resource\_id](#input\_target\_resource\_id) | Target resource ID of the resource where the diagnostic setting is created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_diagnostic_setting_name"></a> [diagnostic\_setting\_name](#output\_diagnostic\_setting\_name) | The ID of the deployed diagnostic setting |
| <a name="output_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#output\_log\_analytics\_workspace\_id) | The ID of the deployedLog Analytics workspace |
<!-- END_TF_DOCS -->
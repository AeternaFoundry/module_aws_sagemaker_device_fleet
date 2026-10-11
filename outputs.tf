output "sagemaker_device_fleets_id" {
  description = "Map of id values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_device_fleets_arn" {
  description = "Map of arn values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_device_fleets_description" {
  description = "Map of description values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sagemaker_device_fleets_device_fleet_name" {
  description = "Map of device_fleet_name values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.device_fleet_name if v.device_fleet_name != null && length(v.device_fleet_name) > 0 }
}
output "sagemaker_device_fleets_enable_iot_role_alias" {
  description = "Map of enable_iot_role_alias values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.enable_iot_role_alias if v.enable_iot_role_alias != null }
}
output "sagemaker_device_fleets_iot_role_alias" {
  description = "Map of iot_role_alias values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.iot_role_alias if v.iot_role_alias != null && length(v.iot_role_alias) > 0 }
}
output "sagemaker_device_fleets_output_config" {
  description = "Map of output_config values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => one(v.output_config) if v.output_config != null && length(v.output_config) > 0 }
}
output "sagemaker_device_fleets_region" {
  description = "Map of region values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_device_fleets_role_arn" {
  description = "Map of role_arn values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "sagemaker_device_fleets_tags" {
  description = "Map of tags values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_device_fleets_tags_all" {
  description = "Map of tags_all values across all sagemaker_device_fleets, keyed the same as var.sagemaker_device_fleets"
  value       = { for k, v in aws_sagemaker_device_fleet.sagemaker_device_fleets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


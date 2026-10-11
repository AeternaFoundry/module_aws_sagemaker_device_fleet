variable "sagemaker_device_fleets" {
  description = <<EOT
Map of sagemaker_device_fleets, attributes below
Required:
    - device_fleet_name
    - role_arn
    - output_config (block):
        - kms_key_id (optional)
        - s3_output_location (required)
Optional:
    - description
    - enable_iot_role_alias
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    device_fleet_name     = string
    role_arn              = string
    description           = optional(string)
    enable_iot_role_alias = optional(bool)
    region                = optional(string)
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
    output_config = object({
      kms_key_id         = optional(string)
      s3_output_location = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_device_fleets : (
        (length(v.device_fleet_name) >= 1 && length(v.device_fleet_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z]){0,62}$", v.device_fleet_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_device_fleets : (
        length(v.output_config.s3_output_location) >= 1 && length(v.output_config.s3_output_location) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


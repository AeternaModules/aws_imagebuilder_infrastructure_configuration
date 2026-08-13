variable "imagebuilder_infrastructure_configurations" {
  description = <<EOT
Map of imagebuilder_infrastructure_configurations, attributes below
Required:
    - instance_profile_name
    - name
Optional:
    - description
    - instance_types
    - key_pair
    - region
    - resource_tags
    - security_group_ids
    - sns_topic_arn
    - subnet_id
    - tags
    - tags_all
    - terminate_instance_on_failure
    - instance_metadata_options (block):
        - http_put_response_hop_limit (optional)
        - http_tokens (optional)
    - logging (block):
        - s3_logs (required, block):
            - s3_bucket_name (required)
            - s3_key_prefix (optional)
    - placement (block):
        - availability_zone (optional)
        - host_id (optional)
        - host_resource_group_arn (optional)
        - tenancy (optional)
EOT

  type = map(object({
    instance_profile_name         = string
    name                          = string
    description                   = optional(string)
    instance_types                = optional(set(string))
    key_pair                      = optional(string)
    region                        = optional(string)
    resource_tags                 = optional(map(string))
    security_group_ids            = optional(set(string))
    sns_topic_arn                 = optional(string)
    subnet_id                     = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    terminate_instance_on_failure = optional(bool)
    instance_metadata_options = optional(object({
      http_put_response_hop_limit = optional(number)
      http_tokens                 = optional(string)
    }))
    logging = optional(object({
      s3_logs = object({
        s3_bucket_name = string
        s3_key_prefix  = optional(string)
      })
    }))
    placement = optional(object({
      availability_zone       = optional(string)
      host_id                 = optional(string)
      host_resource_group_arn = optional(string)
      tenancy                 = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_infrastructure_configurations : (
        v.instance_metadata_options == null || (v.instance_metadata_options.http_put_response_hop_limit == null || (v.instance_metadata_options.http_put_response_hop_limit >= 1 && v.instance_metadata_options.http_put_response_hop_limit <= 64))
      )
    ])
    error_message = "must be between 1 and 64"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_infrastructure_configurations : (
        v.instance_metadata_options == null || (v.instance_metadata_options.http_tokens == null || (contains(["required", "optional"], v.instance_metadata_options.http_tokens)))
      )
    ])
    error_message = "must be one of: required, optional"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_infrastructure_configurations : (
        length(v.instance_profile_name) >= 1 && length(v.instance_profile_name) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_infrastructure_configurations : (
        v.key_pair == null || (length(v.key_pair) >= 1 && length(v.key_pair) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_infrastructure_configurations : (
        v.placement == null || (v.placement.host_id == null || (length(v.placement.host_id) >= 1 && length(v.placement.host_id) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


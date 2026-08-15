output "imagebuilder_infrastructure_configurations_id" {
  description = "Map of id values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "imagebuilder_infrastructure_configurations_arn" {
  description = "Map of arn values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "imagebuilder_infrastructure_configurations_date_created" {
  description = "Map of date_created values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.date_created if v.date_created != null && length(v.date_created) > 0 }
}
output "imagebuilder_infrastructure_configurations_date_updated" {
  description = "Map of date_updated values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.date_updated if v.date_updated != null && length(v.date_updated) > 0 }
}
output "imagebuilder_infrastructure_configurations_description" {
  description = "Map of description values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "imagebuilder_infrastructure_configurations_instance_metadata_options" {
  description = "Map of instance_metadata_options values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => one(v.instance_metadata_options) if v.instance_metadata_options != null && length(v.instance_metadata_options) > 0 }
}
output "imagebuilder_infrastructure_configurations_instance_profile_name" {
  description = "Map of instance_profile_name values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.instance_profile_name if v.instance_profile_name != null && length(v.instance_profile_name) > 0 }
}
output "imagebuilder_infrastructure_configurations_instance_types" {
  description = "Map of instance_types values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.instance_types if v.instance_types != null && length(v.instance_types) > 0 }
}
output "imagebuilder_infrastructure_configurations_key_pair" {
  description = "Map of key_pair values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.key_pair if v.key_pair != null && length(v.key_pair) > 0 }
}
output "imagebuilder_infrastructure_configurations_logging" {
  description = "Map of logging values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => one(v.logging) if v.logging != null && length(v.logging) > 0 }
}
output "imagebuilder_infrastructure_configurations_name" {
  description = "Map of name values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "imagebuilder_infrastructure_configurations_placement" {
  description = "Map of placement values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => one(v.placement) if v.placement != null && length(v.placement) > 0 }
}
output "imagebuilder_infrastructure_configurations_region" {
  description = "Map of region values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "imagebuilder_infrastructure_configurations_resource_tags" {
  description = "Map of resource_tags values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.resource_tags if v.resource_tags != null && length(v.resource_tags) > 0 }
}
output "imagebuilder_infrastructure_configurations_security_group_ids" {
  description = "Map of security_group_ids values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "imagebuilder_infrastructure_configurations_sns_topic_arn" {
  description = "Map of sns_topic_arn values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.sns_topic_arn if v.sns_topic_arn != null && length(v.sns_topic_arn) > 0 }
}
output "imagebuilder_infrastructure_configurations_subnet_id" {
  description = "Map of subnet_id values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "imagebuilder_infrastructure_configurations_tags" {
  description = "Map of tags values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "imagebuilder_infrastructure_configurations_tags_all" {
  description = "Map of tags_all values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "imagebuilder_infrastructure_configurations_terminate_instance_on_failure" {
  description = "Map of terminate_instance_on_failure values across all imagebuilder_infrastructure_configurations, keyed the same as var.imagebuilder_infrastructure_configurations"
  value       = { for k, v in aws_imagebuilder_infrastructure_configuration.imagebuilder_infrastructure_configurations : k => v.terminate_instance_on_failure if v.terminate_instance_on_failure != null }
}


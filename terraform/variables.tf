variable "s3_logging_bucket_name" {
  type = string
}

variable "kinesis_delivery_stream" {
  type = string
}

variable "ekk_kinesis_stream_name" {
  type = string
}

variable "s3_kms_key_arn" {
  type        = string
  description = "KMS Key ARN used to encrypt data within S3 bucket. The key must already exist within the account."
  default     = ""
}

variable "ekk_kinesis_stream_kms_key_id" {
  description = "This is the GUID of a KMS key, not the ARN!"
  default     = ""
}

variable "ekk_kinesis_stream_kms_key_arn" {
  description = "This is the ARN of a KMS key, not the GUID!"
  default     = ""
}

variable "ekk_kinesis_stream_shard_count" {
  default = "1"
}

variable "ekk_kinesis_stream_retention_period" {
  default = "24"
}

variable "ekk_kinesis_stream_shard_metrics" {
  default = ["IncomingBytes", "OutgoingBytes"]
}

variable "aws_region" {
  default = "eu-west-1"
}

variable "es_domain_name" {
  default = "devsecops-ekk-stack"
}

variable "es_version" {
  default = "6.8"
}

variable "es_encryption_at_rest" {
  type        = bool
  description = "disable encryption at rest, by default enabled but can be turned off for using smaller Elastic Search clusters for PoC's and testing"
  default     = true
}

variable "es_instance_type" {
  default = "m5.large.elasticsearch"
}

variable "es_instance_count" {
  default = "2"
}

variable "es_dedicated_master_instance_type" {
  default = "m5.large.elasticsearch"
}

variable "es_kms_key_id" {
  type        = string
  description = "KMS Key ID (NOT the ARN!) used to encrypt data within elasticsearch instances. The key must already exist within the account."
  default     = ""
}

variable "es_dedicated_master_count" {
  default = "2"
}

variable "ekk_role_name" {
  default = "EKKRole"
}

variable "ekk_role_policy_name" {
  default = "EKKRolePolicy"
}

variable "s3_delivery_role_name" {
  default = "EKKS3DeliveryRole"
}

variable "s3_role_log_bucket_access_policy" {
  default = "S3RoleBucketAccessPolicy"
}

variable "es_delivery_role_name" {
  default = "ESDeliveryRole"
}

variable "es_log_group_name" {
  default = "ElasticSearchDeliveryLogGroup"
}

variable "es_log_retention_in_days" {
  default = "7"
}

variable "es_log_stream_name" {
  default = "ElasticSearchDelivery"
}

variable "s3_log_group_name" {
  default = "S3DeliveryLogGroup"
}

variable "s3_log_retention_in_days" {
  default = "7"
}

variable "s3_log_stream_name" {
  default = "S3Delivery"
}

variable "es_dedicated_master_enabled" {
  default = "true"
}

variable "es_zone_awareness_enabled" {
  default = "true"
}

variable "es_advanced_allow_explicit_index" {
  default = "true"
}

variable "es_ebs_enabled" {
  default = "true"
}

variable "es_ebs_iops" {
  default = "0"
}

variable "es_ebs_volume_size" {
  default = "20"
}

variable "es_ebs_volume_type" {
  default = "gp2"
}

variable "es_snapshot_start_hour" {
  default = "0"
}

variable "es_buffering_interval" {
  default = "60"
}

variable "es_buffering_size" {
  default = "50"
}

variable "es_cloudwatch_logging_enabled" {
  default = "true"
}

variable "es_index_name" {
  default = "logmonitor"
}

variable "es_type_name" {
  default = "log"
}

variable "es_index_rotation_period" {
  default = "NoRotation"
}

variable "es_retry_duration" {
  default = "60"
}

variable "es_s3_backup_mode" {
  default = "AllDocuments"
}

variable "s3_buffer_size" {
  default = "10"
}

variable "s3_buffer_interval" {
  default = "300"
}

variable "s3_compression_format" {
  default = "UNCOMPRESSED"
}

variable "s3_prefix" {
  default = "firehose/"
}

variable "s3_cloudwatch_logging_enabled" {
  default = "true"
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

resource "aws_kms_key" "s3_logging_kms_key" {
  count = var.s3_kms_key_arn == "" ? 1 : 0

  description = "S3 Logging KMS Key - Created by Terraform"
}

resource "aws_kms_key" "es_kms_key" {
  count = var.es_kms_key_id == "" || es_encryption_at_rest == 1  ? 1 : 0

  description = "ES data KMS Key - Created by Terraform"
}

resource "aws_kms_key" "kinesis_stream_kms_key" {
  count = var.ekk_kinesis_stream_kms_key_id == "" ? 1 : 0

  description = "Kinesis Stream KMS Key - Created by Terraform"
}


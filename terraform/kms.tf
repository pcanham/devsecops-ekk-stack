resource "aws_kms_key" "s3_logging_kms_key" {
  count       = var.s3_kms_key_arn == "" ? 1 : 0
  description = "EKK - S3 Logging KMS Key"
}

resource "aws_kms_alias" "s3_logging_kms_alias" {
  count         = var.s3_kms_key_arn == "" ? 1 : 0
  name          = "alias/ekk/s3"
  target_key_id = aws_kms_key.s3_logging_kms_key[0].key_id
}

resource "aws_kms_key" "es_kms_key" {
  count       = var.es_kms_key_id == "" || var.es_encryption_at_rest == 1 ? 1 : 0
  description = "EKK - ES data KMS Key"
}

resource "aws_kms_alias" "es_kms_alias" {
  count         = var.es_kms_key_id == "" || var.es_encryption_at_rest == 1 ? 1 : 0
  name          = "alias/ekk/es"
  target_key_id = aws_kms_key.es_kms_key[0].key_id
}

resource "aws_kms_key" "kinesis_stream_kms_key" {
  count       = var.ekk_kinesis_stream_kms_key_id == "" ? 1 : 0
  description = "EKK - Kinesis Stream KMS Key"
}

resource "aws_kms_alias" "kinesis_stream_kms_alias" {
  count         = var.ekk_kinesis_stream_kms_key_id == "" ? 1 : 0
  name          = "alias/ekk/kinesis_stream"
  target_key_id = aws_kms_key.kinesis_stream_kms_key[0].key_id
}

output "es_domain_arn" {
  value = aws_elasticsearch_domain.elasticsearch.arn
}

output "es_domain_endpoint" {
  value = aws_elasticsearch_domain.elasticsearch.endpoint
}

output "ekk_instance_profile_id" {
  value = aws_iam_instance_profile.ekk_instance_profile.id
}

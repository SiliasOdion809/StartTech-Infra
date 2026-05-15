output "cloudfront_url" {
  value = aws_cloudfront_distribution.frontend_cdn.domain_name
}

output "s3_website_url" {
  value = aws_s3_bucket_website_configuration.frontend_website.website_endpoint
}

output "redis_endpoint" {
  value = aws_elasticache_cluster.redis_cluster.cache_nodes[0].address
}

output "load_balancer_dns" {
  description = "Application Load Balancer DNS Name"

  value = aws_lb.application_load_balancer.dns_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront Distribution ID"

  value = aws_cloudfront_distribution.frontend_cdn.id
}

output "s3_bucket_name" {
  description = "Frontend S3 Bucket Name"

  value = aws_s3_bucket.frontend_bucket.bucket
}

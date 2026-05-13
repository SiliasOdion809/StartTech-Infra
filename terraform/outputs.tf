output "cloudfront_url" {
  value = aws_cloudfront_distribution.frontend_cdn.domain_name
}

output "s3_website_url" {
  value = aws_s3_bucket_website_configuration.frontend_website.website_endpoint
}

output "redis_endpoint" {
  value = aws_elasticache_cluster.redis_cluster.cache_nodes[0].address
}
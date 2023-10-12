# Show me bucket url
output "bucket_url" {
  value = "http://${aws_s3_bucket_website_configuration.my-static-website.website_endpoint}"
}

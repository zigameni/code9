resource "aws_s3_bucket" "state_buket" {
  bucket = local.state_bucket_name
}
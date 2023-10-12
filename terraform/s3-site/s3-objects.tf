# Create index.html from template and upload it to s3
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.my-static-website.id
  key    = "index.html"
  content = templatefile("templates/index.html", {
    name           = var.my_name
    s3_bucket_name = aws_s3_bucket.my-static-website.bucket
    workspace      = terraform.workspace
  })
  content_type = "text/html"
}

# Upload styles.css to s3 bucket
resource "aws_s3_object" "css" {
  bucket = aws_s3_bucket.my-static-website.id
  key    = "style.css"
  source = "templates/styles.css"
}
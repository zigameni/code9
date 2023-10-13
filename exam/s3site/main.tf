provider "aws" {
  region = "eu-west-1"
}
resource "aws_s3_bucket" "state_buket" {
  bucket = "mojbucket-cod9-test"
}

resource "aws_route53_zone" "name" {
    name = "mojazona.local"
  
}

resource "aws_route53_record" "www-dev" {
  zone_id = aws_route53_zone.name.id
  name    = "google"
  type    = "CNAME"
  ttl     = 5

  weighted_routing_policy {
    weight = 10
  }

  set_identifier = "dev"
  records        = ["www.google.com"]
}
resource "aws_s3_bucket" "aceshigh" {
  bucket = "${local.state_bucket_name}-${random_pet.pet.id}"
}

resource "random_pet" "pet" {
  length = 2
}
locals {
  bucket_name = "${var.code9_prefix}-${var.my_name}-${random_pet.this.id}"
  region = "us-east-1"
}

resource "random_pet" "this" {
  length = 2
}

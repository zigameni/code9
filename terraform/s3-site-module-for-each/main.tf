module "s3" {
  for_each = var.s3_sites
  source   = "../modules/s3-site"
  my_name  = each.key
}

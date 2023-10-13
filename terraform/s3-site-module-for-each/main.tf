module "s3_for_each" {
  for_each = var.s3_sites
  source   = "../modules/s3-site"
  my_name  = each.key
}

module "s3_count" {
  count = length(var.s3_site_count)
  source   = "../modules/s3-site"
  my_name  = var.s3_site_count[count.index]
}

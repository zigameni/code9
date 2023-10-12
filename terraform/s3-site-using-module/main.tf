module "s3_1" {
  source = "../modules/s3-site"
  my_name =  "TestME"
}

module "s3_2" {
  source = "../modules/s3-site"
  my_name =  "TestME2"
}
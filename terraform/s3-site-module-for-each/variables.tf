variable "s3_sites" {
  type    = map(map(string))
  default = {}
}

variable "s3_site_count" {
  type = list(string)
  default = [ ]
  
}
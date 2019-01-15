variable "rootca_cname" {}
variable "organization_name" {}
variable "locality_name" {}  
variable "country_rootca" {}
variable "allowed_uses" {
  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}
variable "validity_period" {
  default = "17250"
}
variable "early_renewal_hours" {
  default = "3"
}
variable "permission" {
  default = "666"
}
variable "owner" {
   default= "root"
}








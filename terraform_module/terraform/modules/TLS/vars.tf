
variable "organization_name" {}
variable "common_name" {}
variable "country" {}
variable "organization_unit" {}
variable "province_name" {}
variable "allowed_uses" {
  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}variable "validity_period_hours" {
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
variable "dns_names" {
  type        = "string"
  default = "example.com"
}
variable "ip_addresses" {
   type        = "string"
  default = "127.0.0.1"
}
variable "rootca_root_cer" {}
variable "rootca_private_key" {}
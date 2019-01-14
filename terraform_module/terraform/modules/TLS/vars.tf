variable "organization_name" {
  description = "The name of the organization to associate with the certificates."
}

variable "common_name" {
  description = "Common name related to certificate"
}

variable "country" {
  description = "Name of Country related to TLS certificate"
}

variable "organization_unit" {
  description = "The name of the organization unit to associate with the certificates."
}

variable "province_name" {
  description = "Name of State/province related to certificate"
}

variable "allowed_uses" {
  description = " List of keywords each describing a use that is permitted for the issued certificate "
  type        = "list"

  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

variable "validity_period_hours" {
  description = "The number of hours after initial issuing that the certificate will become invalid."
  default     = "17250"
}

variable "early_renewal_hours" {
  description = "The resource will consider the certificate to have expired the given number of hours before its actual expiry time"
  default     = "3"
}

variable "permission" {
  description = "File permission assigned to generated certificates"
  default     = "666"
}

variable "owner" {
  description = "File permission assigned to generated certificates"
  default     = "root"
}

variable "dns_names" {
  description = "List of DNS names for which the certificate will be valid"
  type        = "string"
  default     = "example.com"
}

variable "ip_addresses" {
  description = "List of server's IP addresses for which the certificate will be valid "
  type        = "string"
  default     = "127.0.0.1"
}

variable "rootca_root_cer" {
  description = "Contains the Root certificate generated from Rootca Module"
}

variable "rootca_private_key" {
  description = "Contains the Private Key generated from Rootca Module"
}

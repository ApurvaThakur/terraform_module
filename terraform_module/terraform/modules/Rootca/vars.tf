variable "rootca_cname" {
  description = "Common name related to rootca certificate"
}

variable "organization_name" {
  description = "The name of the organization to associate with the rootca certificates."
}

variable "locality_name" {
  description = "Name of locality related to rootca certificate"
}

variable "country_rootca" {
  description = "Name of Country related to Rootca certificate"
}

variable "allowed_uses" {
  description = " List of keywords each describing a use that is permitted for the issued rootca certificate "
  type        = "list"

  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

variable "validity_period" {
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

variable "rootca_cname" {
  description = "The name of the organization to associate with the rootca certificates."
}

variable "locality_name" {
  description = "Name of locality related to rootca certificate"
}

variable "country_rootca" {
  description = "Name of Country related to Rootca certificate"
}

variable "organization_rootca" {
  description = "The name of the organization to associate with the rootca certificates."
}

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

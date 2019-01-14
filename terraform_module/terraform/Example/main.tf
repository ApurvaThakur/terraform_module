module "Rootca" {
  source            = "../modules/Rootca"
  rootca_cname      = "${var.rootca_cname}"
  organization_name = "${var.organization_rootca}"
  locality_name     = "${var.locality_name}"
  country_rootca    = "${var.country_rootca}"
}

module "TLS" {
  source             = "../modules/TLS"
  common_name        = "${var.common_name}"
  organization_name  = "${var.organization_name}"
  province_name      = "${var.province_name}"
  organization_unit  = "${var.organization_unit}"
  country            = "${var.country}"
  rootca_private_key = "${module.Rootca.private_key_pem}"
  rootca_root_cer    = "${module.Rootca.root_cer}"
}

module "Rootca" {
  source               = "../modules/Rootca"
  rootca_cname         = "${var.rootca_cname}"
  organization_name    = "${var.organization_name}"
  locality_name        = "${var.locality_name}"
  country_rootca       = "${var.country_rootca}"
}
/home/apurvathakur/Desktop/bitbucket/terraform/terraform
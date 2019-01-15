resource "tls_private_key" "rootca_key" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "tls_self_signed_cert" "rootca" {
  key_algorithm         = "ECDSA"
  private_key_pem       = "${tls_private_key.rootca_key.private_key_pem}"
  is_ca_certificate     = true
  validity_period_hours = "${var.validity_period}"
  early_renewal_hours   = "${var.early_renewal_hours}"
  allowed_uses          = ["${var.allowed_uses}"]

  subject {
    common_name  = "${var.rootca_cname}"
    organization = "${var.organization_name}"
    country      = "${var.country_rootca}"
    locality     = "${var.locality_name}"
  }

  provisioner "local-exec" {
    command = "echo '${tls_self_signed_cert.rootca.cert_pem}' > rootca.pem && chmod ${var.permission} rootca.pem && chown ${var.owner} rootca.pem"
  }
}

resource "tls_private_key" "TLS_key" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"

  provisioner "local-exec" {
    command = "echo '${tls_private_key.TLS_key.private_key_pem}' > TLS_priv.key && chmod ${var.permission} TLS_priv.key && chown ${var.owner} TLS_priv.key"
  }
}

resource "tls_cert_request" "TLScert_req" {
  key_algorithm   = "ECDSA"
  private_key_pem = "${tls_private_key.TLS_key.private_key_pem}"
  dns_names       = ["${var.dns_names}"]
  ip_addresses    = ["${var.ip_addresses}"]

  subject {
    common_name         = "${var.common_name}"
    organization        = "${var.organization_name}"
    organizational_unit = "${var.organization_unit}"
    province            = "${var.province_name}"
    country             = "${var.country}"
  }

  provisioner "local-exec" {
    command = "echo '${tls_cert_request.TLScert_req.cert_request_pem}' > example_cert_req.csr && chmod ${var.permission} example_cert_req.csr && chown ${var.owner} example_cert_req.csr"
  }
}

resource "tls_locally_signed_cert" "cert" {
  cert_request_pem      = "${tls_cert_request.TLScert_req.cert_request_pem}"
  ca_key_algorithm      = "ECDSA"
  ca_private_key_pem    = "${var.rootca_private_key}"
  ca_cert_pem           = "${var.rootca_root_cer}"
  validity_period_hours = "${var.validity_period_hours}"
  allowed_uses          = ["${var.allowed_uses}"]

  provisioner "local-exec" {
    command = "echo '${tls_locally_signed_cert.cert.cert_pem}' > example_cer.crt && chmod ${var.permission} example_cer.crt && chown ${var.owner} example_cer.crt"
  }
}

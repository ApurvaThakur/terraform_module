
output "TLS_certificate" {
  value = "${tls_locally_signed_cert.cert.cert_pem}"
}
output "TLS_key" {
  value = "${tls_private_key.TLS_key.private_key_pem}"
}



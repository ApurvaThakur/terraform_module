output "private_key_pem" {
  description = "Contains root certificate private key"
  value       = "${tls_private_key.rootca_key.private_key_pem}"
}

output "root_cer" {
  description = "Contains root certificate"
  value       = "${tls_self_signed_cert.rootca.cert_pem}"
}

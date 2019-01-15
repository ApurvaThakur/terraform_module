output "TLS_certificate" {
  description = "This contains generated TLS certificate"
  value       = "${tls_locally_signed_cert.cert.cert_pem}"
}

output "TLS_key" {
  description = "This contains generated TLS certificate's private key"
  value       = "${tls_private_key.TLS_key.private_key_pem}"
}

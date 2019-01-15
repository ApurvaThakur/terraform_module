
output "private_key_pem"
{
value ="${tls_private_key.rootca_key.private_key_pem}"
}
output "root_cer"
{
value ="${tls_self_signed_cert.rootca.cert_pem}"
}


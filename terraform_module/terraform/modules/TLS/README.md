## Module: TLS

This module creates TLS certificate and its private key.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allowed\_uses | List of keywords each describing a use that is permitted for the issued certificate | list | `<list>` | no |
| common\_name | Common name related to certificate | string | n/a | yes |
| country | Name of Country related to TLS certificate | string | n/a | yes |
| dns\_names | List of DNS names for which the certificate will be valid | string | `"example.com"` | no |
| early\_renewal\_hours | The resource will consider the certificate to have expired the given number of hours before its actual expiry time | string | `"3"` | no |
| ip\_addresses | List of server's IP addresses for which the certificate will be valid | string | `"127.0.0.1"` | no |
| organization\_name | The name of the organization to associate with the certificates. | string | n/a | yes |
| organization\_unit | The name of the organization unit to associate with the certificates. | string | n/a | yes |
| owner | File permission assigned to generated certificates | string | `"root"` | no |
| permission | File permission assigned to generated certificates | string | `"666"` | no |
| province\_name | Name of State/province related to certificate | string | n/a | yes |
| rootca\_private\_key | Contains the Private Key generated from Rootca Module | string | n/a | yes |
| rootca\_root\_cer | Contains the Root certificate generated from Rootca Module | string | n/a | yes |
| validity\_period\_hours | The number of hours after initial issuing that the certificate will become invalid. | string | `"17250"` | no |

## Outputs

| Name | Description |
|------|-------------|
| TLS\_certificate | This contains generated TLS certificate |
| TLS\_key | This contains generated TLS certificate's private key |


## Module: Rootca

This module creates Rootca certificate and its private key.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allowed\_uses | List of keywords each describing a use that is permitted for the issued rootca certificate | list | `<list>` | no |
| country\_rootca | Name of Country related to Rootca certificate | string | n/a | yes |
| early\_renewal\_hours | The resource will consider the certificate to have expired the given number of hours before its actual expiry time | string | `"3"` | no |
| locality\_name | Name of locality related to rootca certificate | string | n/a | yes |
| organization\_name | The name of the organization to associate with the rootca certificates. | string | n/a | yes |
| owner | File permission assigned to generated certificates | string | `"root"` | no |
| permission | File permission assigned to generated certificates | string | `"666"` | no |
| rootca\_cname | Common name related to rootca certificate | string | n/a | yes |
| validity\_period | The number of hours after initial issuing that the certificate will become invalid. | string | `"17250"` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_key\_pem | Contains root certificate private key |
| root\_cer | Contains root certificate |


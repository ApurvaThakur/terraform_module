##Project: Example

It will call two modules: Rootca and TLS.
input.tfvars is the variable file which contains Values for the input variables of Rootca and TLS module can be gathered in variable definition files and passed together using the -var-file=FILE option.

terraform apply -var-file=input.tfvars

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common\_name | Common name related to certificate | string | n/a | yes |
| country | Name of Country related to TLS certificate | string | n/a | yes |
| country\_rootca | Name of Country related to Rootca certificate | string | n/a | yes |
| locality\_name | Name of locality related to rootca certificate | string | n/a | yes |
| organization\_name | The name of the organization to associate with the certificates. | string | n/a | yes |
| organization\_rootca | The name of the organization to associate with the rootca certificates. | string | n/a | yes |
| organization\_unit | The name of the organization unit to associate with the certificates. | string | n/a | yes |
| province\_name | Name of State/province related to certificate | string | n/a | yes |
| rootca\_cname | The name of the organization to associate with the rootca certificates. | string | n/a | yes |







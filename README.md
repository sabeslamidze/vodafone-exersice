# Terraform Coding Exercise

Please read the [instructions](./INSTRUCTIONS.md) file.

<!-- BEGIN_TF_DOCS -->
# Terraform

Reusable TF module to setup DNS resources.

## Usage
Please follow an [example](./examples/exercise/README.md).

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | 3.2.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dns_a_record_set.template](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/a_record_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addresses"></a> [addresses](#input\_addresses) | n/a | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | ------------------------------------------ Write your Terraform variable inputs here ------------------------------------------ | `any` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | n/a | `any` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_a_records_ip_addresses"></a> [dns\_a\_records\_ip\_addresses](#output\_dns\_a\_records\_ip\_addresses) | Configured IP addresses. |
| <a name="output_dns_a_records_zone"></a> [dns\_a\_records\_zone](#output\_dns\_a\_records\_zone) | Configured DNS zone. |
<!-- END_TF_DOCS -->

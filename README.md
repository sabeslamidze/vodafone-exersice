# Terraform Coding Exercise

Please read the [instructions](./INSTRUCTIONS.md) file.
<!-- BEGIN_TF_DOCS -->
# Terraform

Reusable TF module to setup dns\_a\_record\_set resources.

## Usage
Internal use only.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.5 |
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | >= 3.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | >= 3.2.0 |

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

No outputs.
<!-- END_TF_DOCS -->
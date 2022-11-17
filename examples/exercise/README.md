<!-- BEGIN_TF_DOCS -->
# Terraform

Set up and configure DNS provider to dynamically update DNS A Records according to local configuration.

## Usage

 1. Modify `config_path` variable to set path to configuration files. Defaults for `./input-json`;
 2. Run `terraform apply` to update DNS records for local DNS server;
 3. Test DNS server by running `nslookup finance.example.com 127.0.0.1`. All subdomains from `./input-json` should work.

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_updater"></a> [dns\_updater](#module\_dns\_updater) | ../../. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Path to DNS configuration folder. | `string` | `"./input-json"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

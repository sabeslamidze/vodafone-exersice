/**
* # Terraform
*
* Set up and configure DNS provider to dynamically update DNS A Records according to local configuration.
*
*
* ## Usage
*
*  1. Modify `config_path` variable to set path to configuration files. Defaults for `./input-json`;
*  2. Run `terraform apply` to update DNS records for local DNS server;
*  3. Test DNS server by running `nslookup finance.example.com 127.0.0.1`. All subdomains from `./input-json` should work.
*
*/
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ---------------------------------------------------------------------------------------------------------------------
# Configure the DNS Provider
# ---------------------------------------------------------------------------------------------------------------------
provider "dns" {
  update {
    server = "127.0.0.1"
  }
}

locals {
  json_files = fileset(var.config_path, "*.json")
  json_data = [for f in local.json_files : {
    body = jsondecode(file("${var.config_path}/${f}"))
    name = regex("^[^.]+", f)
    }
  ]

  dns_a_records = { for f in local.json_data : f.name => f.body if f.body.dns_record_type == "a" }
}

module "dns_updater" {
  for_each = local.dns_a_records
  source   = "../../."

  name      = each.key
  ttl       = each.value.ttl
  zone      = each.value.zone
  addresses = each.value.addresses

}

# ----------------------------------------
# Write your Terraform module outputs here
# ----------------------------------------
output "dns_a_records" {
  value = {
    for key, value in module.dns_updater : "${key}.${value.dns_a_records_zone}" => value.dns_a_records_ip_addresses
  }
  description = "Configured DNS A records."
}

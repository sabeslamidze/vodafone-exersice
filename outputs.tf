# ----------------------------------------
# Write your Terraform module outputs here
# ----------------------------------------
output "dns_a_records_ip_addresses" {
  value       = dns_a_record_set.template.addresses
  description = "Configured IP addresses."
}

output "dns_a_records_zone" {
  value       = dns_a_record_set.template.zone
  description = "Configured DNS zone."
}

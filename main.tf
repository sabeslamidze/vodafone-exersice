/**
* # Terraform
*
* Reusable TF module to setup DNS resources.
*
* ## Usage
* Please follow an [example](./examples/exercise/README.md).
* 
*
*/
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# ------------------------------------------
# Write your local resources here
# ------------------------------------------

locals {

}

# ------------------------------------------
# Write your Terraform resources here
# ------------------------------------------

resource "dns_a_record_set" "template" {
  zone      = var.zone
  name      = var.name
  addresses = var.addresses
  ttl       = var.ttl
}

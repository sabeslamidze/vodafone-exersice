# ----------------------------------------
# Write your Terraform module inputs here
# ----------------------------------------
variable "config_path" {
  description = "Path to DNS configuration folder."
  type        = string
  default     = "./input-json"
}

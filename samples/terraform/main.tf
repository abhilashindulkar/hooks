terraform {
  required_version = ">= 1.0"
}

variable "environment" {
  type    = string
  default = "dev"
}

locals {
  name_prefix = "sample-${var.environment}"
}

output "name_prefix" {
  value = local.name_prefix
}

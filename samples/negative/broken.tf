variable    "environment" {
type = string
    default="dev"
}

locals {
  name_prefix    = "sample-${var.environment}"
}

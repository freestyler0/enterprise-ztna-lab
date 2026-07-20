terraform {
  required_version = ">= 1.14.0"

  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "~> 4.0"
    }
  }
}

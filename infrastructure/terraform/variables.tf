variable "client_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "customer_id" {
  type = string
}

variable "vanity_domain" {
  type = string
}
variable "zscaler_cloud" {
  type = string
}
provider "zpa" {
  use_legacy_client = true

  zpa_client_id     = var.client_id
  zpa_client_secret = var.client_secret
  zpa_customer_id   = var.customer_id
  zpa_cloud         = "ZPATWO"
}

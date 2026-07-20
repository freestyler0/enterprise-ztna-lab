resource "zpa_server_group" "terraform_servers" {
  name        = "Terraform Servers"
  description = "Created by Terraform"
  enabled     = true
}
terraform {
  backend "s3" {
    bucket = "mikey-s3"
    key = "vault_secrets/state"
    region = "us-east-1"
  }
}


provider "vault" {
  address = "http://44.203.215.181:8200/"
  token = var.token
}



variable "token" {
  default = ""
}


resource "vault_generic_secret" "example" {
  path = "infra/ssh"

  data_json = <<EOT
{
  "username":   "ec2-user",
  "password": "DevOps321"
}
EOT
}
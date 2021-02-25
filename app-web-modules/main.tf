provider "aws" {
}

module "server" {
  source = "app.terraform.io/frb-rgg/server/aws"

  ami                    = var.ami
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["sg-0561c396f78999d6c"]
  identity               = var.identity
  web_count              = var.web_count
}

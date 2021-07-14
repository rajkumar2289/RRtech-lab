provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}
locals {
  env_tags = {
    Environment = terraform.workspace
  }
  tags = merge(var.web_tags, local.env_tags)
}
resource "aws_instance" "centos_terraform" {
  count                       = var.instance_count
  ami                         = var.amiid
  availability_zone           = var.region_az
  instance_type               = var.instance_type
  monitoring                  = var.instance_monitoring
  key_name                    = var.keypair_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids      = var.vpc_security_group_ids
  root_block_device {
    volume_type           = "gp2"
    volume_size           = 12
    delete_on_termination = true
  }
  tenancy                 =var.tenancy
  tags = local.tags
}

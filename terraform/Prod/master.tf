module "ec2-instance" {
  source  = "../Modules/"
  # insert the 10 required variables here

  associate_public_ip_address = var.associate_public_ip_address
  instance_type = var.instance_type
}

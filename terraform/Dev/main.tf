module "ec2-instance" {
  source  = "../Modules"
  # insert the 10 required variables here
  associate_public_ip_address = "${var.associate_public_ip_address}"
  instance_type = "${var.instance_type}"
  instance_count = "${var.instance_count}"
  subnet_id = var.subnet_id
  vpc_security_group_ids = ["sg-0455d3e30e97b7d9e"]
}

module "s3_bucket" {
  source = "../Modules/s3-bucket"
  bucket = var.bucketname
  acl    = "private"
  versioning = {
    enabled = false
  }
}
module "dynamodb_table" {
  source   = "../Modules/s3-bucket"
  tags = {
    Terraform   = "true"
    Environment = "Dev"
  }
}

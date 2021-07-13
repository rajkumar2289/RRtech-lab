variable "aws_ami" {
    default = "ami-01e36b7901e884a10"
}
variable "associate_public_ip_address" {
  default = "true"
}
variable "instance_type" {
  default = "t2.small"
}
variable "instance_count"{
default = 2
}

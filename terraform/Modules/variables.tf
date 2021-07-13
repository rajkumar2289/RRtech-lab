variable "amiid" {
    default = "ami-01e36b7901e884a10"
}
variable "associate_public_ip_address" {
  default = "true"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance_count"{
default = 1
}
variable "region" {
default = "us-east-2"
}
variable "region_az" {
default = "us-east-2"
}
variable "instance_monitoring" {
default = "false"
}
variable "keypair_name" {
default = "CentosKey"
}
variable "cidr_block" {
  default="10.0.0.0/16"
}
variable "web_tags" {
    type = map(string)
    default = {
      Name = "WebApplication"
    }
}
variable "subnet_cidr" {
  default ="10.0.1.0/24"
}
variable "subnet_id"{
  default= "subnet-9c4713d0"
}
variable "tenancy" {
  default = "default"
}
variable "vpc_security_group_ids" {
  default = ["sg-0455d3e30e97b7d9e"]
}
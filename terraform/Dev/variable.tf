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
variable "instance_monitoring" {
default = "false"
}
variable "keypair_name" {
default = "CentosKey"
}
variable "cidr_block" {
  default="10.0.2.0/16"
}
variable "subnet_id" {
  default = "subnet-9c4713d0"
}
variable "web_tags" {
    type = map(string)
    default = {
      Name = "WebApplication"
    }
}
variable "subnet_cidr" {
default ="10.0.3.0/24"
}

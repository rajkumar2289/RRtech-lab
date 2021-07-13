resource "aws_subnet" "pub_sub" {
vpc_id = aws_vpc.my_vpc.id
cidr_block = var.subnet_cidr
map_public_ip_on_launch = true
tags = {
      Name = "PublicSubnet"
}
}

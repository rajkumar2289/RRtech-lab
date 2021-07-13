resource "aws_vpc" "my_vpc" {
  cidr_block   = "${var.cidr_block}"
  instance_tenancy = "default"

   tags = {
       name = "myvpc"
       Environment = "${terraform.workspace}"

   }
}

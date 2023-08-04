resource "aws_subnet" "public1" {
 vpc_id = aws_vpc.zk_vpc.id
 cidr_block = element(var.vpc_public_subnets, 0)
 availability_zone = "us-west-2a"
 map_public_ip_on_launch = "true"
 tags = {
  Name = "zk_public_subnet1"
 } 
}
resource "aws_subnet" "private1" {
 vpc_id = aws_vpc.zk_vpc.id
 cidr_block = element(var.vpc_private_subnets, 0)
 availability_zone = "us-west-2a"
 tags = {
  Name = "zk_private_subnet1"
 }
}

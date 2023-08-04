resource "aws_route_table" "zk_route_table" {
 vpc_id = aws_vpc.zk_vpc.id
 
 route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.zk_igw.id
 }
 
 tags = {
  Name = "zk_route_table"
 }
}

resource "aws_route_table_association" "zk_rt_association_pub" {
 subnet_id = aws_subnet.public1.id
 route_table_id = aws_route_table.zk_route_table.id
}
resource "aws_route_table_association" "zk_rt_association_priv" {
 subnet_id = aws_subnet.private1.id
 route_table_id = aws_route_table.zk_route_table.id
}

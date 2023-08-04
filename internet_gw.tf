resource "aws_internet_gateway" "zk_igw" {
 vpc_id = aws_vpc.zk_vpc.id
 tags = { 
  Name = "zk_igw"
 }
}

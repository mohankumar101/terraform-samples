resource "aws_eip" "zk_nat" {
  count = 1
  domain = "vpc"
}

# Not using the following VPC module block to test things manually
/* module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "zk_vpc"
  cidr = var.vpc_cidr_block

  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
 
  
  enable_nat_gateway = true
  single_nat_gateway  = true
  reuse_nat_ips       = true                    # <= Skip creation of EIPs for the NAT Gateways
  external_nat_ip_ids = "${aws_eip.nat.*.id}"   # <= IPs specified here as input to the module

  tags = {
    Terraform = "true"
    Environment = "zk_dev"
  }
}
*/


resource "aws_vpc" "zk_vpc" {
 cidr_block = var.vpc_cidr_block
 instance_tenancy = "default"
 enable_dns_hostnames = "true"
 tags = {
  Name = "zk_vpc"
 }
}


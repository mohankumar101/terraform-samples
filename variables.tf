variable "zk_instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "zk_vpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["us-west-2a", "us-west-2b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

provider "aws" {
    region = "us-west-2"
}

data "aws_ami" "zk_instance_ami" {
    most_recent = true
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"] # Canonical
}

resource "aws_instance" "zk_web_instance" {
    ami = data.aws_ami.zk_instance_ami.image_id
    instance_type = var.zk_instance_type
    vpc_security_group_ids = [ aws_security_group.zk_web_security_group.id ]
    subnet_id = aws_subnet.public1.id
 
    tags = {
        Name = "zk_web_instance"
    }
    depends_on = [
        aws_vpc.zk_vpc
  ]
}

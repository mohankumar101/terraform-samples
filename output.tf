output "zk_instance_name" {
    value = aws_instance.zk_web_instance.public_dns
}

output "zk_instance_ip" {
    value = aws_instance.zk_web_instance.public_ip
}

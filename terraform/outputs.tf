output "bastion_host_ip" {
  value = aws_instance.bastion_host.public_ip
}

output "mysql_instance_ip" {
  value = aws_instance.mysql_instance.private_ip
}

output "tool_vpc_id" {
  value = aws_vpc.main.id
}
output "default_vpc_id" {
  value = data.aws_vpc.default.id
}
output "tool_cidr_block" {
  value = aws_vpc.main.cidr_block
}
output "default_vpc_cidr_block" {
  value = data.aws_vpc.default.cidr_block
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "securitygroup_id" {
  value = aws_security_group.main.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}


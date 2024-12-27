resource "aws_vpc" "database_vpc" {
  cidr_block           = var.database_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.database_vpc_name
  }
}

resource "aws_vpc_peering_connection" "vpc_peering" {
  vpc_id        = var.master_vpc_id
  peer_vpc_id   = aws_vpc.database_vpc.id
  auto_accept   = true

  tags = {
    Name = "Master-Database-VPC-Peering"
  }
}

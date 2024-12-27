resource "aws_vpc" "database_vpc" {
  cidr_block           = var.database_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "Database-VPC"
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

# Route Table for Master EC2 VPC to Database VPC
resource "aws_route" "master_to_database" {
  route_table_id         = var.master_route_table_id  # Replace with your Master EC2 VPC route table ID
  destination_cidr_block = aws_vpc.database_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}

# Route Table for Database VPC to Master EC2 VPC
resource "aws_route" "database_to_master" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "172.31.0.0/16"  # Master EC2 VPC CIDR
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}

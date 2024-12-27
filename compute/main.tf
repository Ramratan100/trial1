resource "aws_instance" "private1" {
  ami               = var.ami
  instance_type     = "t2.micro"
  subnet_id         = var.private_subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.securitygroup_id]  # Correct argument for VPC
  tags = {
    Name = "Private1-EC2"
  }
}

resource "aws_instance" "private2" {
  ami               = var.ami
  instance_type     = "t2.micro"
  subnet_id         = var.private_subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.securitygroup_id]  # Correct argument for VPC
  tags = {
    Name = "Private2-EC2"
  }
}

resource "aws_instance" "private3" {
  ami               = var.ami
  instance_type     = "t2.micro"
  subnet_id         = var.private_subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.securitygroup_id] # Correct argument for VPC
  tags = {
    Name = "Private3-EC2"
  }
}

resource "aws_instance" "bastion" {
  ami               = var.ami
  instance_type     = "t2.micro"
  subnet_id         = var.public_subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.securitygroup_id]  # Correct argument for VPC
  tags = {
    Name = "Bastion-Host"
  }
}

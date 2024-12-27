resource "aws_instance" "private" {
  ami               = var.ami
  instance_type     = "t2.micro"
  subnet_id         = var.private_subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.securitygroup_id]  # Correct argument for VPC
  tags = {
    Name = "Private1-EC2"
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

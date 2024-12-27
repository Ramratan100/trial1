resource "aws_instance" "bastion_host" {
  ami             = var.bastion_ami
  instance_type   = var.bastion_instance_type
  key_name        = var.key_name
  subnet_id       = aws_subnet.public_subnet_web.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install -y python3 python3-pip
    sudo pip3 install boto3
  EOF

  tags = {
    Name = "Bastion-Host"
  }
}

resource "aws_instance" "mysql_instance" {
  ami             = var.mysql_ami
  instance_type   = var.mysql_instance_type
  key_name        = var.key_name
  subnet_id       = aws_subnet.private_subnet_database.id
  vpc_security_group_ids = [aws_security_group.mysql_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install -y python3 python3-pip
    sudo pip3 install boto3
  EOF

  tags = {
    Name = "MySQL-Instance"
  }
}

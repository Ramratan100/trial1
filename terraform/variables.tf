variable "database_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "master_vpc_id" {
  description = "Master VPC ID"
  default = "vpc-00ec09536f7ae310f"
}

variable "public_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "az" {
  default = "ap-northeast-1a"
}

variable "bastion_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "bastion_ami" {
  default = "ami-0ac6b9b2908f3e20d"
}

variable "mysql_ami" {
  default = "ami-0ac6b9b2908f3e20d"
}

variable "bastion_instance_type" {
  default = "t2.micro"
}

variable "mysql_instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "tokyojenkins"
}

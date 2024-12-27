variable "bastion_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "mysql_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

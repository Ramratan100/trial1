variable "region" {
  default = "ap-southeast-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "key_name" {
  default = "mysql"
}

variable "ami" {
  description = "AMI ID for the instances"
  default     = "ami-03fa85deedfcac80b" # Replace with your desired AMI
}

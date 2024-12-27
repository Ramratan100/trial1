variable "key_name" {
  default = "mysql"
}

variable "ami" {
  description = "AMI ID for the instances"
  default     = "ami-03fa85deedfcac80b" # Replace with your desired AMI
}

variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
} 

variable "securitygroup_id" {
  type = string
}

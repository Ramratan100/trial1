variable "key_name" {
  default = "tokyojenkins.pem"
}

variable "ami" {
  description = "AMI ID for the instances"
  default     = "ami-0ac6b9b2908f3e20d" # Replace with your desired AMI
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

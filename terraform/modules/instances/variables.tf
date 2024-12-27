variable "bastion_ami" {
  description = "AMI for Bastion host"
  type        = string
}

variable "mysql_ami" {
  description = "AMI for MySQL server"
  type        = string
}

variable "bastion_instance_type" {
  description = "Instance type for Bastion host"
  type        = string
}

variable "mysql_instance_type" {
  description = "Instance type for MySQL server"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

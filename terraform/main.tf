module "vpc" {
  source = "./modules/vpc"
  master_vpc_id = "vpc-00ec09536f7ae310f"
}

module "networking" {
  source = "./modules/networking"
  az = "ap-northeast-1a"
  public_subnet_cidr = "10.0.2.0/24"
  private_subnet_cidr = "10.0.1.0/24"
}

module "security_groups" {
  source = "./modules/security_groups"
  bastion_subnet_cidr = "10.0.2.0/24"
}

module "instances" {
  source = "./modules/instances"
  bastion_ami = "ami-0ac6b9b2908f3e20d"
  mysql_ami = "ami-0ac6b9b2908f3e20d"
  bastion_instance_type = "t2.micro"
  mysql_instance_type = "t2.micro"
  key_name = "tokyojenkins"
}

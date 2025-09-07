provider "aws" {
  region = var.aws_region
}

# Call VPC Module
module "network" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  vpc_name           = "Misba-VPC"
}

# Call EC2 Module
module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.network.public_subnet_id
  vpc_id        = module.network.vpc_id
  instance_name = "Misba-EC2"
}

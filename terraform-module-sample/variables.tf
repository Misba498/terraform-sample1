variable "aws_region" { default = "ap-south-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnet_cidr" { default = "10.0.1.0/24" }
variable "availability_zone" { default = "ap-south-1a" }
variable "ami_id" { default = "ami-0f58b397bc5c1f2e8" } # Amazon Linux 2
variable "instance_type" { default = "t2.micro" }

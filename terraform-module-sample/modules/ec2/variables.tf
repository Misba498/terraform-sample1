variable "ami_id" {
  description = "AMI ID for the instance"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
}

variable "subnet_id" {}

variable "vpc_id" {}
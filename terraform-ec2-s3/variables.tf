# AWS Region
variable "aws_region" {
  description = "AWS region where resources will be created"
  default     = "ap-south-1" # Mumbai
}

# S3 bucket name must be unique
variable "bucket_name" {
  description = "Unique name for the S3 bucket"
  default     = "misba-demo-bucket"
}

# EC2 instance type
variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

# AMI ID for Amazon Linux 2 in ap-south-1
variable "ami_id" {
  description = "Amazon Linux 2 AMI for ap-south-1"
  default     = "ami-0861f4e788f5069dd"
}

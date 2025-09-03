# Configure AWS provider
provider "aws" {
  region = var.aws_region
}

# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}

# Create EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Misba-Terraform-EC2"
  }
}
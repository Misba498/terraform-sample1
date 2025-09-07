output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.public_subnet_id
}

output "ec2_ip" {
  value = module.ec2_instance.public_ip
}

output "s3_bucket" {
  value = module.storage.bucket_id
}

output "s3_bucket_arn" {
  value = module.storage.bucket_arn
}
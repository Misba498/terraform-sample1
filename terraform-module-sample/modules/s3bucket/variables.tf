variable "bucket_name" {
  description = "Name of the S3 bucket"
}

variable "versioning_enabled" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = false
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  force_destroy = true   # allow delete even if bucket not empty

  tags = {
    Name = var.bucket_name
  }
}

# Optional: enable versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}

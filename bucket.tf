resource "aws_s3_bucket" "bucket" {
  bucket = "fitenergia-teste"

  tags = {
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}
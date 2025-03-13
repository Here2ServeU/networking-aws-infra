resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.company_name}-${var.environment}-terraform-state"
}

resource "aws_s3_bucket_acl" "terraform_acl" {
  bucket = aws_s3_bucket.terraform_state.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "terraform_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "${var.company_name}-${var.environment}-terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
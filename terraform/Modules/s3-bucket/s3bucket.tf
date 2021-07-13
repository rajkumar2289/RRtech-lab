provider "aws" {
  region     = "us-east-2"
  access_key = "AKIARA3WAUJSBH3EX67I"                     #AWS_ACCESS_KEY_ID --export AWS_ACCESS_KEY_ID="AKIARA3WAUJSBH3EX67I"
  secret_key = "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" #AWS_SECRET_ACCESS_KEY --export AWS_SECRET_ACCESS_KEY="kSHCy5loapPZXUZTialed4c6CuAIKMgFCDE7Pc/M"
}
resource "aws_kms_key" "kmsCreatedByRaj" {
  description             = "KMS key created to secure s3 bucket"
  deletion_window_in_days = var.deletion_window_in_days
}
resource "aws_dynamodb_table" "dynamo_table_byraj" {
  name         = var.dynamotable
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }
  tags = {
    Name        = var.dynamotable
    Environment = terraform.workspace
  }
}
resource "aws_s3_bucket" "s3bucketcreatedbyraj" {
  bucket        = var.bucketname
  force_destroy = var.force_destroy
  acl           = "private"
  tags = {
    Name        = var.bucketname
    Environment = terraform.workspace
  }
  versioning {
    enabled = true
  }
  lifecycle_rule {
    prefix  = "log/"
    enabled = true
    expiration {
      date = var.bucket_expiration_date
    }
  }
}
terraform {
  backend "s3" {
    bucket         = "s3bucketbreatedbyraj"
    region         = "us-east-2"
    key            = "Dev/V1.0/statefiles"
    dynamodb_table = "dynamo_table_byraj"

  }
}

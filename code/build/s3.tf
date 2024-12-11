provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "354f8e52-ba4c-411f-95f6-69acdbad8819"
    git_commit           = "303aaffd528daabb2d346622d3c0b6ee78d5950b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:30:03"
    git_last_modified_by = "karlkeskyla@users.noreply.github.com"
    git_modifiers        = "karlkeskyla"
    git_org              = "karlkeskyla"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

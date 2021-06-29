

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-alisa"
  acl    = "private"
  versioning {
      enabled = false
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Team        = "DevOps"
  }
}
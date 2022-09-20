resource "random_pet" "pet-name" {
  length = 5
  prefix = "akabanov"
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = random_pet.pet-name.id
  tags = {
    public-bucket = true
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.my-bucket.id
  acl = "private"
}

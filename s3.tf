resource "aws_s3_bucket" "s3bucket" {
    bucket = "my-test-bucket0001"

    tags={
        Name=var.s3BucketName
    }
  
}
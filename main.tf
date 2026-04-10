resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-target-demo-bucket-769187177925"

  tags = {
    Name = "demo-bucket"
  }
}
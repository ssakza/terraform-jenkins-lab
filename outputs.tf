output "demo_bucket_name" {
  description = "Created S3 bucket name in target account"
  value       = aws_s3_bucket.demo.bucket
}

output "assumed_target_role" {
  description = "Role ARN used for deployment"
  value       = var.target_role_arn
}
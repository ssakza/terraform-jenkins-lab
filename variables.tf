variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "target_role_arn" {
  description = "IAM Role ARN to assume in target account"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name to create in target account"
  type        = string
}
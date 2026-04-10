terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket = "target-infra-tfstate-769187177925"
    key    = "demo/terraform.tfstate"
    region = "ap-northeast-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
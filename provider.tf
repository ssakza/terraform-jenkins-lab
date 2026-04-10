provider "aws" {
  region = var.region

  assume_role {
    role_arn     = var.target_role_arn
    session_name = "jenkins-target-demo"
  }

  default_tags {
    tags = {
      Project   = "target-demo"
      ManagedBy = "Terraform"
      Owner     = "Jenkins"
    }
  }
}
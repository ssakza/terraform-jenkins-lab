provider "aws" {
  region = var.region

  assume_role {
    role_arn     = var.target_role_arn
    session_name = "jenkins-demo-session"
  }
}
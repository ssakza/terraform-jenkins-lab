pipeline {
    agent any

    environment {
        TF_VAR_target_role_arn = 'arn:aws:iam::769187177925:role/target-role'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Identity') {
            steps {
                sh 'aws sts get-caller-identity'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
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

        stage('Tool Check') {
            steps {
                sh '''
                    set -e
                    pwd
                    ls -al
                    git --version
                    aws --version
                    terraform version
                '''
            }
        }

        stage('Check Identity') {
            steps {
                sh '''
                    set -e
                    aws sts get-caller-identity
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                dir('05-target-demo') {
                    sh '''
                        set -e
                        terraform init -reconfigure
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('05-target-demo') {
                    sh '''
                        set -e
                        terraform plan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('05-target-demo') {
                    sh '''
                        set -e
                        terraform apply -auto-approve
                    '''
                }
            }
        }

        stage('Terraform Output') {
            steps {
                dir('05-target-demo') {
                    sh '''
                        set -e
                        terraform output
                    '''
                }
            }
        }
    }
}
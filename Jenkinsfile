pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
    } 
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform configuration from version control
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                // Initialize Terraform and download providers
                sh 'terraform init -migrate-state -backend-config="access_key=${AWS_ACCESS_KEY_ID}" -backend-config="secret_key=${AWS_SECRET_ACCESS_KEY}"'
            }
        }
        
        // stage('Terraform Plan') {
        //     steps {
        //         // Run Terraform plan to see the planned changes
        //         sh 'terraform plan'
        //     }
        // }
        
        stage('Terraform Apply') {
            steps {
                script {
                    withAWS(credentials: 'aws_creds', region:'us-east-1') {
                        sh 'terraform apply -auto-approve'
                }
                // Apply the changes using Terraform
                         
            }
        }
    }
}
}

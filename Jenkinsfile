pipeline {
    agent any

    
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
                    
                        sh 'terraform apply -auto-approve'
                
                // Apply the changes using Terraform
                         
            }
        }
    }
}
}

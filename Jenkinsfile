pipeline {
    agent any
   
    stages {
        
        stage('Terraform Init') {
            steps {
                // Initialize Terraform and download providers
                sh 'terraform init -migrate-state'
            }
        }

        stage('Terraform Apply') {
            steps {
                        sh 'terraform apply -auto-approve'
            }
        }
    }
}

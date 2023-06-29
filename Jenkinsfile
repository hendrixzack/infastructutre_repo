pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: '<CREDS>', url: 'https://github.com/hendrixzack/infastructutre_repo'
            }
        }
        stage('Terraform init') {
            steps {
                 script {
        withAWS(credentials: 'your-credentials-id') {
                sh 'terraform init'}}
            }
        }
        stage('Terraform apply') {
            steps {
                 script {
        withAWS(credentials: 'your-credentials-id') {
                sh 'terraform apply --auto-approve'}}
            }
        }
        
    }
}

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
        withAWS(credentials: 'aws_cred') {
                sh 'terraform init'}}
            }
        }
        stage('Terraform apply') {
            steps {
                 script {
        withAWS(credentials: 'aws_cred') {
                sh 'terraform apply --auto-approve'}}
            }
        }
        
    }
}

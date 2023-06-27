pipeline {
    agent any

    environment {
        TF_VERSION = '4.67.0'
        TF_INIT_PARAMS = '-input=false'
        TF_VALIDATE_PARAMS = ''
        TF_PLAN_PARAMS = '-input=false -out=tfplan'
        TF_APPLY_PARAMS = '-input=false tfplan'
    }

    stages {
        stage('Install dependencies') {
            steps {
                script {
                    sh '''
                        curl -o terraform.zip -LO https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip
                        unzip terraform.zip
                        sudo mv terraform /usr/local/bin/
                        rm terraform.zip
                    '''
                }
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init ${TF_INIT_PARAMS}'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate ${TF_VALIDATE_PARAMS}'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan ${TF_PLAN_PARAMS}'
            }
        }

        stage('Terraform Apply') {
            steps {
                input 'Are you sure you want to apply the terraform changes?'
                sh 'terraform apply ${TF_APPLY_PARAMS}'
            }
        }
    }

    post {
        failure {
            echo 'Deployment failed!'
        }
        success {
            echo 'Deployment succeeded!'
        }
    }
}

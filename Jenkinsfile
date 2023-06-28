pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
         }

      }
    }

    stage('Terraform Init') {
      steps {
      }
    }


    stage('Terraform Apply') {
      steps {
        input 'Are you sure you want to apply the terraform changes?'
        sh 'terraform apply ${TF_APPLY_PARAMS}'
      }
    }

  }

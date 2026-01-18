pipeline {
  agent any

  environment {
    AZURE_CLIENT_ID       = credentials('azure-client-id')
    AZURE_CLIENT_SECRET  = credentials('azure-client-secret')
   AZURE_TENANT_ID      = credentials('azure-tenant-id')
   AZURE_SUBSCRIPTION_ID = credentials('azure-subscription-id')
  }

  stages {

    stage('Checkout Code') {
      steps {
        git branch: 'main', credentialsId: 'GitHub', url: 'https://github.com/surajjp7/Terraform-VM-Creation.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
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

  post {
    success {
      echo 'Azure VM created successfully using Jenkins + Terraform'
    }
    failure {
      echo 'Terraform execution failed'
    }
  }
}

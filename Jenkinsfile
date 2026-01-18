pipeline {
  agent any

  environment {
    client_id       = credentials('azure-client-id')
    client_secret   = credentials('azure-client-secret')
    tenant_id       = credentials('azure-tenant-id')
    subscription_id = credentials('azure-subscription-id')
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

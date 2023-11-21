pipeline {

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    agent any
	tools {
        	terraform 'terraform'
    	      }

    stages {
        stage('Terraform version checking') {
            steps {
                echo 'Terraform version is checking'
                sh 'terraform --version'
				echo 'Terraform version is ok'
            }
        }
        stage('Terraform initialization') {
            steps {
                echo 'Terraform initialization started'
                sh 'terraform init'
				echo 'Terraform initialization is completed'
            }
        }
        stage('Terraform Planning') {
            steps {
                echo 'Terraform Planning started'
                sh 'terraform plan'
				echo 'Terraform Planning is completed'
            }
        }
        stage('Terraform Apply') {
            steps {
                echo 'Terraform Apply is starting'
                sh 'terraform apply --auto-approve'
				echo 'Terraform Apply is completed'
            }
        }
	stage('Terraform DESTROY') {
            steps {
                echo 'Terraform destroy is starting'
                sh 'terraform destroy --auto-approve'
				echo 'Terraform destroy is completed'
            }
        }
     
    }
}

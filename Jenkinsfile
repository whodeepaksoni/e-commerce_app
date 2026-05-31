pipeline {
    agent any

    environment {
        IMAGE_NAME = "whodeepaksoni/ecommerce-app"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/whodeepaksoni/e-commerce_app.git'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running unit tests..."'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
                sh 'docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:latest'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-cred',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    sh 'docker push $IMAGE_NAME:$IMAGE_TAG'
                    sh 'docker push $IMAGE_NAME:latest'
                }
            }
        }

        stage('Deploy Using Ansible') {
            steps {
                sh 'ansible-playbook -i /home/ubuntu/ansible/inventory.ini /home/ubuntu/ansible/deploy-app.yml -e image_tag=$BUILD_NUMBER'
            }
        }
    }
}
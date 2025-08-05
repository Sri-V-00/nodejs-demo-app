pipeline {
    agent any

    environment {
        DOCKERHUB_USER = "sriv01"
        IMAGE_NAME = "nodejs-demo-app"
    }

    stages {
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    '''
                }
            }
        }

        stage('Pull Image from DockerHub') {
            steps {
                sh 'docker pull sriv01/nodejs-demo-app'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    docker rm -f node-app || true
                    docker run -d --name node-app -p 3000:3000 sriv01/nodejs-demo-app
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed.'
        }
        failure {
            echo '❌ Deployment failed.'
        }
    }
}

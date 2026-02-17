pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK21'
    }

    stages {

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Git Checkout') {
            steps {
                git credentialsId: 'token_jenkins2',
                    url: 'https://github.com/veropedro/api.git',
                    branch: 'main'
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Generate Allure Report') {
            steps {
                bat 'mvn allure:report'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build("veropedro/api:latest")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    def dockerImage = docker.build("veropedro/api:latest")

                    docker.withRegistry(
                        'https://index.docker.io/v1/',
                        'token_jenkins2'
                    ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }

    post {
        always {
            allure includeProperties: false,
                   jdk: '',
                   results: [[path: 'allure-results']]
        }
    }
}
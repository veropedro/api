pipeline {
    agent any

    environment {
        registry = "veropedro/api"
        registryCredential = 'DockerHubAccount'
        dockerImage = ''
    }

    tools {
        maven 'maven'
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
                script {
                    git branch: 'main',
                        credentialsId: 'token_jenkins2',
                        url: 'https://github.com/veropedro/api.git'
                }
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }
    }
}
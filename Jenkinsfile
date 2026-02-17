pipeline {
    agent any

    // variables d'environnement
    environment {
        registry = "veropedro/api"
        registryCredential = 'DockerHubAccount'
        dockerImage = ''
    }

    // outils déclarés dans Jenkins
    tools {
        maven 'maven'
        jdk 'JDK21'
    }

    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'main',
                        credentialsId: 'token_jenkins2',
                        url: 'https://github.com/veropedro/api.git'
                }
            }
        }

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }
    }
}
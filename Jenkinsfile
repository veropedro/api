pipeline {
    agent any
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

        
    }
}
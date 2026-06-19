pipeline  {
    agent any 
    stages {
        stage('clone code') {
            steps{
                // github se code khinchega
                git branch: 'main', url: 'https://github.com/dhruvbhatia-dev/DevOps-Project-Two-Tier-Flask-App.git'
            }
        }
        stage('Build and run containers') {
            steps{
                script {
                    // purane containers htaye or naye bnaye
                    sh 'docker compose down'
                    sh 'docker compose up -d --build'
                }
            }
        }
    }
}
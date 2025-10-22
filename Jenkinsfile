pipeline {
    agent any

    stages {
        stage('Checkout from GitHub') {
            steps {
                echo 'Getting the latest GallaryCafe code...'
                git url: 'https://github.com/firoshh/GallaryCafe.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the GallaryCafe container...'
                sh 'docker build -t gallary-cafe-app .'
            }
        }
        stage('Deploy Application') {
            steps {
                echo 'Deploying the GallaryCafe app and database...'
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }
    }
}
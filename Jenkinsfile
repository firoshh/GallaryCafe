pipeline {
    agent any

    stages {
        // NEW STAGE: This will run first and install docker-compose
        stage('Setup Tools') {
            steps {
                echo 'Installing docker-compose...'
                // The Jenkins container runs as root, so we can use apt
                sh 'apt-get update'
                sh 'apt-get install -y docker-compose'
            }
        }

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
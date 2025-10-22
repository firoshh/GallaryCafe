pipeline {
    agent any

    stages {
        // This stage will now install ALL the tools Jenkins needs
        stage('Setup Tools') {
            steps {
                echo 'Installing Docker and Docker-Compose...'
                sh 'apt-get update'
                sh 'apt-get install -y docker.io docker-compose'
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
                // This will use the docker.io we just installed
                sh 'docker build --no-cache -t gallary-cafe-app .'
            }
        }
        
        stage('Deploy Application') {
            steps {
                echo 'Deploying the GallaryCafe app and database...'
                // This will use the docker-compose we just installed
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }
    }
}
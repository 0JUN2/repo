pipeline {

    agent any

    tools { nodejs "nodejs12" }

    stages {

        stage('Get build information') {
            steps {
                sh 'echo $PATH'
                sh 'node --version'
                sh 'npm --version'
            }
        }

        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
               sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}

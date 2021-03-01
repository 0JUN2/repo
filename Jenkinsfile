pipeline {
    stages {
        stage('pull') {
            steps {
                git credentialsId: 'YOUNGJUN_CHO', url: 'git@github.com:0JUN2/repo-install.git'
            }
        }
		stage('test') {
            steps {
                echo 'hello pipeline'
            }
        }
    }
}

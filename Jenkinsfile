pipeline {
    agent any
    triggers {
        pollSCM('H/5 * * * *')
    }
    stages {
        stage('Deploy') {
            steps {
                sh '''
                    sudo rsync -av --delete public/ /var/www/html/
                '''
            }
        }
    }
}
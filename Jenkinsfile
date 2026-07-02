pipeline {
    agent any
    triggers {
        pollSCM('H/5 * * * *')
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    sudo yum install httpd rsync -y
                    sudo systemctl start httpd
                    sudo systemctl enable httpd
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    sudo rsync -av --delete public/ /var/www/html/
                '''
            }
        }
    }
}
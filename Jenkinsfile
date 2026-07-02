pipeline {
    agent any

    environment {
        LOG_DIR = "${WORKSPACE}/system-monitor"
    }

    triggers {
        pollSCM('H/5 * * * *')
        cron('H H(2-4) * * *')
    }

    stages {
        stage('Run Monitoring Script') {
            steps {
                sh 'chmod +x scripts/monitor.sh && ./scripts/monitor.sh'
            }
        }
        stage('Archive Logs') {
            steps {
                archiveArtifacts artifacts: 'system-monitor/*.log', fingerprint: true
            }
        }
    }
}
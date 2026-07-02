pipeline {
    agent any

    environment {
        LOG_DIR = "${WORKSPACE}/system-monitor"
    }

    triggers {
        cron('H/15 * * * *')
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
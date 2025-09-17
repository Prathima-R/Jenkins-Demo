pipeline {
    agent none   // don't bind pipeline to a single agent

    stages {
        stage('Run on Prod') {
            agent { label 'Prod' }
            steps {
                sh 'echo "Running on PROD server"'
                sh 'hostname'
            }
        }

        stage('Run on Preprod') {
            agent { label 'Preprod' }
            steps {
                sh 'echo "Running on PREPROD server"'
                sh 'hostname'
            }
        }

        stage('Run on Dev') {
            agent { label 'D`ev' }
            steps {
                sh 'echo "Running on DEV server"'
                sh 'hostname'
            }
        }
    }
}

pipeline {
    agent { label 'prod' }   // correct label syntax

    stages {
        stage('testing stage') {   // lowercase "stage"
            steps {
                sh 'hostname'      // run Linux command
            }
        }
    }
}

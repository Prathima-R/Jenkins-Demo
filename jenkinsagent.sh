pipeline {
    agent any  
    stages {
        stage('testing_stage') {   // lowercase "stage"
            steps {
                sh 'hostname'      // run Linux command
            }
        }
    }
}

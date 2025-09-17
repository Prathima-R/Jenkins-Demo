pipeline {
    agent { label 'Prod || Preprod' }   // will run on Prod or Preprod node

    tools {
        maven 'maven'        // name must match Maven tool configured in Jenkins
        jdk 'java-11'        // name must match JDK configured in Jenkins
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/Prathima-R/Jenkins-Demo.git'
            }
        }

        stage('Compile') {
            steps {
                sh "mvn compile"
            }
        }

        stage('Build') {
            steps {
                sh "mvn package"
            }
        }
    }
}

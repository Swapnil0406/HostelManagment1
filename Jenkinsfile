pipeline {
    agent any
    
    tools {
        maven 'Maven-3.9.11'   // Name configured in Jenkins -> Global Tool Configuration
        jdk 'jdk-17.0.16'          // JDK name configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/Swapnil0406/HostelManagment1.git'
            }
        }

        stage('Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package -DskipTests'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'target/*.war', fingerprint: true
                }
            }
        }
    }
}

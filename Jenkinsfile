pipeline {
    agent any

    tools {
        maven 'Maven-3.9.11'   // 👈 This name must match Global Tool Configuration
        jdk 'jdk-17'
    }
    stages {
        stage('SCM') {
            steps {
                git branch: 'master', url: 'https://github.com/Swapnil0406/HostelManagment1.git'
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}

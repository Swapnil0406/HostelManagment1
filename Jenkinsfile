pipeline {
    agent any
    
    stages {
        stage('SCM') {
            steps {
                git branch: 'master', url: 'https://github.com/Swapnil0406/HostelManagment1.git'
            }
        }
        
  stage('Build Docker Image') {
    steps {
        sh 'docker build -t swapnil390/tomcat:latest .'
         }
       }
         stage('Build Docker Image') {
    steps {
        docker run -d --name HostelManagement -p 8085:8085 swapnil390/tomcat:latest
         }
       }
    }
}

pipeline {
    agent any
     environment {
        IMAGE_NAME = 'swapnil390/tomcat:latest'
        CONTAINER_NAME = 'HostelManagement'
        HOST_PORT = '8085'
        CONTAINER_PORT = '8080' // Default Tomcat port inside container
    }
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
        stage('Run Docker Container') {
    steps {
        sh '''
            docker rm -f HostelManagement || true
            docker run -d --name HostelManagement -p 8085:8080 swapnil390/tomcat:latest
        '''
        }
      }
    }
}

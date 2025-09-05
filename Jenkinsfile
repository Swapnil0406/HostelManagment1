pipeline {
    agent any
    stages {
        stage('SCM') {
            steps {
                git branch: 'master', url: 'https://github.com/Swapnil0406/HostelManagment1.git'
            }
        }
       stage('Build WAR') {
    tools {
        maven 'maven' // Name you gave in Jenkins global config
          }
    steps {
        sh 'mvn clean package -DskipTests'
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
        stage('Push Docker Image') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', 
                                          usernameVariable: 'DOCKER_USER', 
                                          passwordVariable: 'DOCKER_PASS')]) {
            // Login to Docker Hub
            sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
            
            // Push the image
            sh 'docker push swapnil390/tomcat:latest'
          }
        }
      }
    }
}

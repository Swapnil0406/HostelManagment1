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
        script {
            docker.build("swapnil390/tomcat:latest")
            }
         }
       }
    }
}

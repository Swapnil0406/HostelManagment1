pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
               git branch: 'master', url: 'https://github.com/Swapnil0406/HostelManagment1.git'
            }
        }
        stage('Package') { 
            steps {
                'mvn clean'
                'mvn package'
            }
        }
    }
}

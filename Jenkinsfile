pipeline {
    agent any
    tools {
       maven 'maven'   
    }
    stages {
        stage('build') {
            steps {
                //sh 'mvn --version'
                echo 'hello build'
                sh 'mvn validate'
                sh 'mvn compile'
            }
        }
        stage('test') {
            steps {
               
                echo 'hello test'
                sh 'mvn test'
                
            }
        }
    }
}

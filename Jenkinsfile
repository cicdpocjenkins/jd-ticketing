pipeline {
    agent any
    tools {
       maven 'mvn'   
    }
    stages {
        stage('build') {
            steps {
                //sh 'mvn --version'
                sh 'mvn clean'
                echo 'hello build'
                sh 'mvn validate'
                sh 'mvn compile -X'
            }
        }
        stage('test') {
            steps {
               
                echo 'hello test'
                sh 'mvn test'
                
            }
        }
         stage('package') {
            steps {
               
                echo 'hello package'
                sh 'mvn package'
                
            }
        }
        stage('docker image') {
            steps {
               
                echo 'hello docker'
                sh 'echo $(pwd)'
                sh ' docker version'
                sh ' docker build --tag=jd-ticketing:latest . '
                
            }
        }
    }
}

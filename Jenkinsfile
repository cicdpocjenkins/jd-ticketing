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
                sh 'mv /var/lib/jenkins/workspace/jd-ticketing/target/SpringMVC-ProjectManagement-0.0.1-SNAPSHOT.jar /var/lib/jenkins/workspace/jd-ticketing/jd-ticketing.jar'
                echo 'hello docker'
                sh 'echo $(pwd)'
                sh ' docker version'
                sh ' docker build --tag=jd-ticketing:latest . '
                
            }
        }
    }
}

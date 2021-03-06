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
                sh ' ls -la'
                echo 'hello docker'
                sh 'echo $(pwd)'
                //sh ' docker version'
                sh ' docker build --tag=jd-ticketing:latest . '
                sh 'docker tag jd-ticketing:latest cicdpocjenkins/cybertekrepo:jd-ticketing'
                
            }
        }
        
        stage('docker push'){
            steps {
             sh 'docker login --password=cybertek1234* --username=cicdpocjenkins'   
             sh 'docker image push cicdpocjenkins/cybertekrepo:jd-ticketing'   
            }
        }
        
        stage('AWS Cloud deploy'){
            steps {
                script{
                withAWS(credentials:'awscloud', region:'eu-north-1') {

                       def accounts = listAWSAccounts()
                    echo accounts
                  }
              }
                
            }
        }
    }
}

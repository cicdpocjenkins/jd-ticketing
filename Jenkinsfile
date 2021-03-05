pipeline {
    agent any
    tools {
       maven 'mvn-3.5.2'   
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

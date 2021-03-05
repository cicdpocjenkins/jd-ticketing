pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                //sh 'mvn --version'
                echo 'hello build'
                mvn validate
                mvn compile
            }
        }
        stage('test') {
            steps {
               
                echo 'hello test'
                mvn test
                
            }
        }
    }
}

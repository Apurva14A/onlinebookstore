pipeline {  
    agent any
    tools {
        // Define the Maven tool with the desired name and version
        maven 'maven-3.9.5'
    }
    options {
         buildDiscarder(logRotator(numToKeepStr: '5'))
       }

       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh 'mvn clean package'
                    echo "Build is successful for ${env.BUILD_ID}"
                     }         
                 }
           stage('Static Code Analysis') {
                environment {
             SONAR_URL = "http://172.18.0.4:9000"
                     }
               steps {
                  withCredentials([string(credentialsId: 'sonarqube', variable: 'SONAR_AUTH_TOKEN')]) {
                    mvn sonar:sonar -Dsonar.login=$SONAR_AUTH_TOKEN -Dsonar.host.url=${SONAR_URL}'
                   }
                  }
    
        }
}
}

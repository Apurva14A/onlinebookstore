pipeline {  
    agent any
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
               post {
                  success {
                       archiveArtifacts artifacts: 'target/*.war', fingerprint: true
                        }
                     }
                 }
           stage('Test') {
            steps {
                sh 'mvn test'
                echo "Test is successful for ${env.BUILD_ID}"
            
            }
        }
    
        }
}

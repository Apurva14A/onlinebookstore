pipeline {  
    agent any
    
       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh 'mvn clean package'
                    echo "Build is successful for ${env.BUILD_ID}"
                     }
               post {
                  success {
                       archiveArtifacts artifacts: 'archiveArtifacts artifacts: \'build-pipeline-online-bookStore/target/*.war\'', onlyIfSuccessful: true
                        }
                     }
                 }
           stage('Test') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                sh 'mvn test'
                junit '**/target/*.xml'
            
            }
        }
    
        }
}

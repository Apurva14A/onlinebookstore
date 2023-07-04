pipeline {  
    agent any
    
       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh 'mvn clean package'
                    echo "Build is successful"
                     }
               post {
                  success {
                       archiveArtifacts artifacts: 'archiveArtifacts artifacts: \'target/*.jar\'', onlyIfSuccessful: true
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

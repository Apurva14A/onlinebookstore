pipeline {  
    agent any
    
       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh 'mvn clean compile'
                    echo "Build is successful"
                     }
                 }
           stage('Test') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                sh 'mvn test'
                junit '**/build/test-reports/*.xml'
            
            }
        }
    
        }
}

pipeline {  
    agent any
    
       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh "mvn clean package"
                    echo "Build is successful"
                     }
                 }
           stage('Test') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                junit '**/build/test-reports/*.xml'
            
            }
        }
    
        }
}

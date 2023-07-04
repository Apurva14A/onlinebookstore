pipeline {  
    agent any
    
       stages { 
           stage('build') {
                steps {
                    echo "build app"
                   sh "mvn clean package"
                    echo "Build is successful"
                     }
           }
    
        }
}

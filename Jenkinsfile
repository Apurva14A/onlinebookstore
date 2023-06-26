pipeline {  
    agent any
    
       stages { 
            stage("checkout") {  
           	    steps {  
              	    echo "git checkout" 
                      checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'DevOps_Projects_2', url: 'https://github.com/Apurva14A/onlinebookstore.git']])
              	    echo "Repo is successfully cloned"  
              	    }  
         	    }
           
           stage('build') {
                steps {
                    echo "build app"
                   sh "mvn clean package"
                    echo "Build is successful"
                     }
           }
    
        }
}

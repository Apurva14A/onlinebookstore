pipeline {  
    agent any
    
       stages { 
            stage("checkout") {  
           	    steps {  
              	    echo "Build app" 
                       sh "checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'DevOps_Projects_2', url: 'https://github.com/Apurva14A/onlinebookstore.git']]"
              	    echo "Repo is successfully cloned"  
              	    }  
         	    }
            
        }
}

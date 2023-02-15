pipeline {  
    agent any  
        stages {  
       	    stage("git_checkout") {  
           	    steps {  
              	    echo "cloning repository" 
                     checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'DevOps-Token-2', url: 'https://github.com/Apurva14A/onlinebookstore.git']])
              	    echo "repo cloned successfully"  
              	    }  
         	    } 
            stage("build") {  
           	    steps {  
              	    echo "Build app" 
                     sh 'clean install'
              	    echo "app build successfully"  
              	    }  
         	    }
            
        }
}

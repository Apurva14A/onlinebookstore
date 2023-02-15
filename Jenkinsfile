pipeline {  
    agent any  
        stages { 
            stage("build") {  
           	    steps {  
              	    echo "Build app" 
                     sh 'clean install'
              	    echo "app build successfully"  
              	    }  
         	    }
            
        }
}

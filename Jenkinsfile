pipeline {  
    agent any  
        stages { 
            stage("build") {  
           	    steps {  
              	    echo "Build app" 
                     sh 'mvn -B -DskipTests clean package'
              	    echo "app build successfully"  
              	    }  
         	    }
            
        }
}

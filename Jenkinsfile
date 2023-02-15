pipeline {  
    agent any  
    tools{
       maven 'M3'  
    }
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

pipeline {  
    agent any  
    tools{
       maven 'maven-3.6.3' 
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

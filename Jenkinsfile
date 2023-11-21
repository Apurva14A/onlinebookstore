pipeline {  
    agent {
    docker  {
    image 'abhishekf5/maven-abhishek-docker-agent:v1'
      args '--user root -v /var/run/docker.sock:/var/run/docker.sock'
     }
    }
    
    tools {
        // Define the Maven tool with the desired name and version
        maven 'maven-3.9.5'
    }
    
    options {
         buildDiscarder(logRotator(numToKeepStr: '5'))
       }

       stages { 
           stage('Build') {
                steps {
                    echo "build app"
                   sh 'mvn clean package'
                    echo "Build is successful for ${env.BUILD_ID}"
                     }         
                 post {
                  success {
                       archiveArtifacts artifacts: 'target/*.war', fingerprint:true
                       fingerprint 'target/*.war'
                        }
                     }

                 }
           stage('Static Code Analysis') {
                environment {
             SONAR_URL = "http://172.19.0.4:9000"
                     }
               steps {
                  withCredentials([string(credentialsId: 'sonarqube', variable: 'SONAR_AUTH_TOKEN')]) {
                    sh 'mvn sonar:sonar -Dsonar.login=$SONAR_AUTH_TOKEN -Dsonar.host.url=${SONAR_URL}'
                   }
                     }
           }

          stage('Build and Push Docker Image') {
                 environment {
                        DOCKER_IMAGE = "aapurva/onlinebookstore:${BUILD_NUMBER}"
                        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials-id')
                  }
                   
          steps {
                    script {
                        sh 'docker build -t ${DOCKER_IMAGE} .'
                         def dockerImage = docker.image("${DOCKER_IMAGE}")
                            docker.withRegistry('https://index.docker.io/v1/', "dockerhub-credentials-id") {
                            dockerImage.push()
                            }
                        }
                  }
            }

        }
}

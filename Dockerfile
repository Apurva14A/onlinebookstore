# the first stage of our build will use a maven 3.6.1 parent image
FROM maven:3.6.1-jdk-8-alpine AS MAVEN_BUILD

# copy the pom and src code to the container
COPY ./ ./

# package our application code
RUN mvn clean package

# the second stage of our build will use open jdk 8 on alpine 3.9
FROM  tomcat:8.5

# Removing files from tomact webapp directory and creating a new directory
RUN rm -rf /usr/local/tomcat/webapps/* 

# copy only the artifacts we need from the first stage and discard the rest
COPY --from=MAVEN_BUILD /onlinebookstore/target/*war /usr/local/tomcat/webapps/books.war

# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]
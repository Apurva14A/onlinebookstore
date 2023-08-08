# Use an official Tomcat image as the base
FROM tomcat:9.0-jdk11

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the .war artifact from the artifacts directory to the Tomcat webapps directory
COPY ./staging/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

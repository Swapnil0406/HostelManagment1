# Use official Tomcat base image
FROM tomcat:9.0.108

# Maintainer info (optional)
LABEL maintainer="swapnil"

# Remove default ROOT application (optional, keeps container clean)
RUN rm -rf /opt/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY target/HostelManagementSystem.war /usr/local/tomcat/webapps/

# Expose port 8085
EXPOSE 8085

# Start Tomcat
CMD ["catalina.sh", "run"]

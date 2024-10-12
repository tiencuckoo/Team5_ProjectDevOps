FROM tomcat:8.0.20-jre8
MAINTAINER Team 5
EXPOSE 8080
COPY target/Team5_ProjectDevOps.war /usr/local/tomcat/webapps/Team5_ProjectDevOps.war

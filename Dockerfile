FROM tomcat:8.0.20-jre8
MAINTAINER Tally <tallylg1509@gmail.com>
EXPOSE 8080
COPY target/team5_project.war /usr/local/tomcat/webapps/team5_project.war

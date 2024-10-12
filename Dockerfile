# Use a Maven image to build the application
FROM maven:3.8.4-openjdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Use a Tomcat image to run the application
FROM tomcat:9.0-jdk11
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat runs on
EXPOSE 8080


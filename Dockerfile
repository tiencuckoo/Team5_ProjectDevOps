# Use an official Maven image to build the app
FROM maven:3.8.4-openjdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=builder /app/target/your-app.jar /app/your-app.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/your-app.jar"]

# Expose the port your app runs on
EXPOSE 8080

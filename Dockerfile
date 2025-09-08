# Use official Java runtime as base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the JAR file built by Maven into the container
COPY target/*.jar app.jar

# Expose port your Spring Boot app uses
EXPOSE 8080

# Command to run the Spring Boot app
ENTRYPOINT ["java","-jar","app.jar"]

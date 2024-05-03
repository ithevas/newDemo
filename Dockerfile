# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container at /app
COPY target/spring-petclinic-*.jar /app/spring-petclinic.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the Spring Boot application when the container launches
CMD ["java", "-jar", "/app/spring-petclinic.jar"]

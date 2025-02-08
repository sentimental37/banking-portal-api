# Use official OpenJDK runtime
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the built JAR file
COPY target/banking-portal-api.jar banking-portal-api.jar

# Expose the application port
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "banking-portal-api.jar"]

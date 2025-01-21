FROM eclipse-temurin:17-jre-alpine
WORKDIR /

# Install curl for debugging (optional)
RUN apk add --no-cache curl

# Copy the built JAR file
COPY target/springboot-aws-deploy-service.jar /springboot-aws-deploy-service.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/springboot-aws-deploy-service.jar"]

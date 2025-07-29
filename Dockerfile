# Use Maven + JDK image
FROM maven:3.9.4-eclipse-temurin-17

# Set working directory inside container
WORKDIR /app

# Copy all project files to the container
COPY . .

# Package the application
RUN mvn clean package

# Run the app
CMD ["java", "-cp", "target/myapp-1.0-SNAPSHOT.jar", "com.ansh.app.App"]

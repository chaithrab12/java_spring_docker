FROM maven:3.9.2-eclipse-temurin-17 AS build

WORKDIR /app

COPY . /app

RUN mvn clean package -DskipTests


# Final stage to run the app
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8880

ENTRYPOINT ["java"]

CMD ["-jar","app.jar"]








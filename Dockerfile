# Stage 1: Build Stage


FROM maven:3.8.5-openjdk-17-slim as build

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

# COPY . .

COPY src ./src

RUN mvn clean package -DskipTests -B -T 4C

# Stage 2: Runtime Stage

FROM gcr.io/distroless/java17-debian11

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar
EXPOSE 8880
ENTRYPOINT ["java", "-jar", "app.jar"]

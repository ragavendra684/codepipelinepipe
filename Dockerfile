#buildtime
FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

#Runtime
FROM amazoncorretto:17

#definethings
WORKDIR /app
COPY --from=build /build/target/codepipe*.jar /app/

EXPOSE 8088

CMD ["java", "-jar", "codepipelinepipe-0.0.1.jar"]

FROM eclipse-temurin:21-jdk-alpine
COPY . .
RUN ./mvnw clean install -DskipTests
ENTRYPOINT ["java","-jar", "target/0.0.1-SNAPSHOT.jar"]
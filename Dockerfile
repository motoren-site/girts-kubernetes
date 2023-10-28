FROM maven:3.8.5-amazoncorretto-17 as build-stage
WORKDIR /app
COPY ./src /app/src
COPY ./pom.xml /app/pom.xml
RUN mvn clean package
COPY ./target/*.jar /app/app.jar

FROM eclipse-temurin:17-jre as run
WORKDIR  /app
ENTRYPOINT ["java","-jar","app.jar"]

FROM openjdk:10-jre-slim

EXPOSE 8080

RUN apt-get update

RUN apt-get install -y dnsutils

COPY target/insta-api-gateway-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

FROM openjdk:10-jre-slim


COPY target/insta-api-gateway-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

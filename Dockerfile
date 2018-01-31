# eureka server
FROM openjdk:8-jdk
MAINTAINER <robert.adelmann@mercy.net>

EXPOSE 8761

VOLUME /data

COPY target/eureka-server-0.0.1-SNAPSHOT.jar /app/service.jar

CMD ["java", "-jar", "/app/service.jar"]
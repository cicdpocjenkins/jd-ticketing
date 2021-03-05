FROM openjdk:8-jdk-alpine
MAINTAINER cybertek.com
COPY target/jd-ticketing-1.0.0.jar jd-ticketing-1.0.0.jar
ENTRYPOINT ["java","-jar","/jd-ticketing-1.0.0.jar"]

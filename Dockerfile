#FROM adoptopenjdk/openjdk11 as build
FROM openjdk:8-jdk-alpine as build
MAINTAINER cybertek.com
COPY  jd-ticketing-1.0.0.jar /
ENTRYPOINT ["java","-jar","/jd-ticketing-1.0.0.jar"]

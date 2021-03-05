FROM openjdk:8-jdk-alpine
MAINTAINER cybertek.com
COPY /var/lib/jenkins/workspace/jd-ticketing/target/SpringMVC-ProjectManagement-0.0.1-SNAPSHOT.jar jd-ticketing-1.0.0.jar
ENTRYPOINT ["java","-jar","/jd-ticketing-1.0.0.jar"]

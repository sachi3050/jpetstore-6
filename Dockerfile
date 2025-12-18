FROM openjdk:8-jdk-slim

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ./mvnw clean package
CMD ./mvnw cargo:run -P tomcat90

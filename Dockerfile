FROM openjdk:17.0.2
EXPOSE 8070
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ./mvnw clean package -DskipTests
CMD ./mvnw cargo:run -P tomcat90

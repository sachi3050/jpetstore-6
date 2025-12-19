FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app
COPY target/jpetstore.war app.jar

EXPOSE 8070
ENTRYPOINT ["java", "-jar", "app.jar"]

FROM openjdk:17-alpine
WORKDIR /test
COPY /target/app-0.0.1-SNAPSHOT.war /test
CMD ["java", "-jar", "app-0.0.1-SNAPSHOT.war"]
EXPOSE 8081

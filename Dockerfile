FROM maven AS build
WORKDIR /app
COPY . /app
RUN mvn clean install

FROM openjdk:17-alpine
WORKDIR /test
COPY --from=build /app/target/app-0.0.1-SNAPSHOT.war /test/
CMD ["java", "-jar", "app-0.0.1-SNAPSHOT.war"]
EXPOSE 8081

FROM  maven As build
WORKDIR /build
COPY . /build
RUN mvn clean install

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build target/app-0.0.1-SNAPSHOT.war /app
CMD  ["java", "-jar", "app-0.0.1-SNAPSHOT.war"]
EXPOSE 8081

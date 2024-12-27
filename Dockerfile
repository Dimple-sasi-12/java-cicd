FROM amazonlinux
WORKDIR /app
COPY . /app
RUN yum install maven -y && yum install java-17 -y 
RUN mvn clean install
WORKDIR /test
COPY target/app-0.0.1-SNAPSHOT.war /test
COPY java.sh /test
RUN chmod +x /test/java.sh
ENTRYPOINT ["/test/java.sh"]
EXPOSE 8081


FROM amazonlinux 
WORKDIR /app
COPY . /app
RUN yum install maven -y && yum install java-17 -y
ENTRYPOINT ["java.sh"]
EXPOSE 8081

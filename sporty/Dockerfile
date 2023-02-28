# FROM java

# COPY ./target/demo-docker*.jar /usr/app/dockerDemo.jar

# WORKDIR /usr/app

# EXPOSE 8082

# ENTRYPOINT ["java","-jar","dockerDemo.jar"]

# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

# copy JAR into the image
COPY target/SportyApplication.jar /SportyApplication.jar

# run application with this command line
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/SportyApplication.jar"]

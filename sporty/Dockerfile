FROM adoptopenjdk/openjdk11:alpine-jre
ADD target/sporty*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]

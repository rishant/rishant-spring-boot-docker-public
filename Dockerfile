FROM openjdk:8

EXPOSE 8080

ARG APP_NAME="spring-boot-docker-image-sample"
ARG JAR_FILE="build/libs/${APP_NAME}.jar"

ADD ${JAR_FILE} /app/spring-boot-docker-sample.jar

# Dummy file copy from Host to springboot Image.
COPY jenkinsfile /app/jenkinsfile

RUN echo 'Developed By Rishant Gupta'

WORKDIR /app
ENTRYPOINT ["java", "-jar", "spring-boot-docker-sample.jar"]
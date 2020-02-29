
FROM openjdk:8-jdk-alpine


LABEL maintainer="sudip.post@gmail.com"

RUN mkdir -p /opt/app
WORKDIR /opt/app


EXPOSE 9091

# The application's jar file
ARG JAR_FILE=build/libs/docker-*.jar

# Add the application's jar to the container
ADD ${JAR_FILE} docker-app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","docker-app.jar"]

FROM alpine:latest
RUN apk update && \
    apk add --no-cache openjdk11 maven tomcat-native && \
    rm -rf /var/cache/apk/*
RUN mvn clean install
COPY /target/*.war /var/lib/tomcat9/webapps/app.war

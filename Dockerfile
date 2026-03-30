FROM eclipse-temurin:21-jdk

EXPOSE 8070

ENV APP_HOME=/usr/src/app

COPY target/my-app-1.0-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar

FROM adoptopenjdk/openjdk11
    
EXPOSE 5585
 
ENV APP_HOME /usr/src/app

COPY ./target/*.jar /usr/src/app/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]

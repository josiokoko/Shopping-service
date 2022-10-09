FROM openjdk:11

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/shopping-0.0.1-SNAPSHOT.jar $PROJECT_HOME/shopping.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./shopping.jar"]

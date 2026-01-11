FROM maven:3.9-eclipse-temurin-17 AS build
LABEL author="Naveen"
LABEL project="Learning"
ADD . ./app
WORKDIR /app
RUN mvn package 

FROM eclipse-temurin:17-jre-alpine 

LABEL author="Naveen"
LABEL project="Learning"

RUN adduser -D -h /usr/share/spc -s /bin/sh spc

USER spc

WORKDIR /usr/share/spc

COPY --from=build  /app/target/spring-petclinic-4.0.0-SNAPSHOT.jar spring-petclinic-4.0.0-SNAPSHOT.jar

EXPOSE 8080/tcp

CMD ["java", "-jar", "spring-petclinic-4.0.0-SNAPSHOT.jar"]

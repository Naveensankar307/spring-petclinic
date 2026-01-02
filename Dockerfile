FROM amazoncorretto:17

LABEL author="Naveen"
LABEL project="Learning"

ADD target/spring-petclinic-4.0.0-SNAPSHOT.jar /


CMD ["java", "-jar", "/spring-petclinic-4.0.0-SNAPSHOT.jar"]

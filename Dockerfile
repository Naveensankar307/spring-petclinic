#For java applications, we cannot run the application as root user and not under the / directory.
#We need to create a non-root user and run the application under that user.
#Also, we should not use the / directory to store application files.
#So first create a user by using adduser command and then switch to that user using USER command.

# eclipse-temurin:17-jre-alpine is a lightweight image for Java 17 runtime environment. 
#JRE is sufficient to run Java applications and it is smaller in size compared to JDK images.

FROM eclipse-temurin:17-jre-alpine 

LABEL author="Naveen"
LABEL project="Learning"

WORKDIR /usr/share/spc

ADD target/spring-petclinic-4.0.0-SNAPSHOT.jar spring-petclinic-4.0.0-SNAPSHOT.jar

EXPOSE 8080/tcp

CMD ["java", "-jar", "spring-petclinic-4.0.0-SNAPSHOT.jar"]

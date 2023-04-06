FROM openjdk:17
EXPOSE 8080
ADD target/Student-Demo.jar Student-Demo.jar
ENTRYPOINT [ "java","-jar" ,"/Student-Demo.jar"]

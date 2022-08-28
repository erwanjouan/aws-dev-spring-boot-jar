FROM public.ecr.aws/amazoncorretto/amazoncorretto:11-al2-jdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
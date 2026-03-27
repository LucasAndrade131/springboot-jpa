FROM eclipse-temurin:17
LABEL maintainer="lucas.andrade.tecnologia@gmail.com"
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
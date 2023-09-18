FROM openjdk:11 as builder

WORKDIR /app

COPY build.gradle gradlew gradlew.bat ./
COPY gradle ./gradle
COPY src src

RUN ./gradlew build -x test

COPY ./ ./

RUN ./gradlew bootJar

FROM openjdk:11-jre

WORKDIR /app

COPY --from=builder /app/build/libs/app.jar ./

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]


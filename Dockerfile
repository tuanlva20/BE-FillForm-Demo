# Run stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

USER spring:spring

EXPOSE 2412
ENTRYPOINT ["java", "-jar", "app.jar"] 
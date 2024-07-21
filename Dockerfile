# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de tu aplicación en el contenedor
COPY /build/libs/api-lentesBD-0.0.1-SNAPSHOT.jar /app/api.jar

# Expone el puerto que tu aplicación utilizará
EXPOSE 8080

# Comando para ejecutar tu aplicación
ENTRYPOINT ["java", "-jar", "/app/api.jar"]

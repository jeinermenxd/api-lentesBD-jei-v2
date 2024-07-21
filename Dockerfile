# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu aplicación al directorio de trabajo
#COPY /build/libs/api-lentesBD-0.0.1-SNAPSHOT.jar /app/apixd.jar
COPY /build/libs/api-lentesBD-0.0.1-SNAPSHOT.jar /app/api-lentesBD-0.0.1-SNAPSHOT.jar 

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar tu aplicación
ENTRYPOINT ["java", "-jar", "/app/api-lentesBD-0.0.1-SNAPSHOT.jar "]

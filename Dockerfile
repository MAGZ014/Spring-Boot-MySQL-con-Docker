
FROM eclipse-temurin:21.0.8_9-jdk

# Infromar el puerto dende esta corriendo la app
EXPOSE 8080
# definir el contenerdor raiz del contenerdor
WORKDIR /root

# Archivos dentro del contenedor

COPY ./pom.xml /root
COPY ./.mvn /root/.mvn
COPY ./mvnw /root

# Descargar las dependencias
RUN ./mvnw dependency:go-offline

# Copiar el codigo funte
COPY ./src /root/src

# construir la apliacion
RUN ./mvnw clean install -DskipTests

# Levantar la apliacion
ENTRYPOINT ["java","-jar","/root/target/SpringDocker-0.0.1-SNAPSHOT.jar"]
# Spring Boot + MySQL con Docker

Este proyecto es un ejemplo práctico de cómo levantar una **API REST en Spring Boot** conectada a una base de datos **MySQL** utilizando **Docker** y **Docker Compose**.

---

##  Tecnologías usadas
- Java 21 (Eclipse Temurin)
- Spring Boot
- Maven
- MySQL
- Docker & Docker Compose

---

##  Estructura del proyecto

```
src/
├── main/
│ ├── java/com/example/...
│ └── resources/
├── Dockerfile
├── docker-compose.yml
├── pom.xml
└── README.md
```

# Cómo ejecutar
- Clonar el repositorio

``` bash
git clone https://github.com/tu_usuario/tu_repo.git
cd tu_repo
```

- Levantar los contenedores
```bash
docker-compose up --build
```

Esto levantará:

- MySQL en el puerto 3308 (internamente 3306)
- Spring Boot API en el puerto 8080

Verificar que todo funciona

```bash

curl http://localhost:8080/findAll
```

## Endpoints básicos
|Método | Endpoint |	Descripción|
|-------|----------|--------------|
|GET	| /findAll | Lista todos los usuarios|
|GET	| /find/{id} |Busca un usuario por ID|


## Persistencia de datos
El contenedor de MySQL usa un volumen llamado mysql-volume para que los datos persistan aunque el contenedor se detenga.


# Detener el proyecto
```
docker-compose down
```

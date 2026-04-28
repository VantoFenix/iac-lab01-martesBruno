# Laboratorio 01: Infraestructura como Código y Desarrollo de API

Este proyecto corresponde al **Laboratorio 01** del curso. Consiste en el desarrollo de una API REST utilizando **Spring Boot** y la automatización de su infraestructura mediante **Terraform** y **Docker**, siguiendo una arquitectura de tres capas (3-Tier).

---

##  1. Desarrollo del Backend (Spring Boot)

Se ha implementado una API básica que funciona como el núcleo del sistema.

### Tecnologías:
* **Java**: Versión 17/25.
* **Framework**: Spring Boot 3.4.x.
* **Gestor**: Maven (Maven Wrapper).

### Estructura de código:
El código sigue las mejores prácticas de organización por paquetes:
* `com.example.demo.controller`: Contiene a `HelloWorldController.java` encargado de las rutas web.
* `DemoApplication.java`: Clase principal de arranque del framework.

### Instrucciones para correr la API localmente:
1. Navegar a la carpeta del proyecto:
   ```bash
   cd demo/demo
   imnplementacion de docker compose en lugar de docker file para mayor limpieza de codigo 
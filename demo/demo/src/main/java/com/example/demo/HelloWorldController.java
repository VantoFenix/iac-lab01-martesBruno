package com.example.demo; // <--- Este es tu paquete actual

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// Marcamos esta clase como un controlador REST
@RestController
public class HelloWorldController {

    // Mapeamos la URL raíz ("/") a este método
    @RequestMapping("/")
    public String helloWorld() {
        // Esto es lo que verás en el navegador
        return "¡Hello World! Este es mi primer controlador en Spring Boot.";
    }
}
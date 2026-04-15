package com.example.demo; // <--- Cambiado para que coincida con tu carpeta

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
// Clase principal de tu proyecto "demo"
public class DemoApplication implements CommandLineRunner { 

    // Método que se ejecuta al iniciar la app
    @Override
    public void run(String... args) throws Exception { 
        System.out.println("¡Hola Mundo desde Spring Boot!"); 
        // Aquí puedes empezar a programar la lógica de tu Lab01
    } 

    public static void main(String[] args) { 
        // Esto arranca todo el framework de Spring
        SpringApplication.run(DemoApplication.class, args); 
    } 
}
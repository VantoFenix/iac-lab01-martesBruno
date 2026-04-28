package com.example.demo;
import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class RegistrarEnvio implements RequestHandler<Object, String> {
    @Override
    public String handleRequest(Object input, Context context) {
        context.getLogger().log("Registrando nuevo envío logístico...");
        return "Envío registrado con éxito";
    }
}
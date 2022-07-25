package com.bd1.Back.controller;

import com.bd1.Back.entity.Persona;
import com.bd1.Back.service.PersonaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("personas")
public class PersonaController {
    @Autowired
    private PersonaService personaService;

    @GetMapping
    public List<Persona> finAll(){
        return personaService.findAll();
    }

    @PostMapping
    public Persona create(@RequestBody Persona persona) throws Exception {
        return personaService.create(persona);
    }

    @PutMapping
    public Persona update(@RequestBody Persona persona) throws Exception {
        return personaService.update(persona);
    }

    @GetMapping("/{id}")
    public Persona findById(@PathVariable("id") Integer idPersona){
        return personaService.findById(idPersona);
    }
}

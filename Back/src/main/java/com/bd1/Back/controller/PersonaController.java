package com.bd1.Back.controller;

import com.bd1.Back.entity.Persona;
import com.bd1.Back.service.PersonaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("personas")
public class PersonaController {
    @Autowired
    private PersonaService personaService;

    @GetMapping
    public ResponseEntity<List<Persona>> finAll(){
        return new ResponseEntity<>(personaService.findAll(), HttpStatus.OK) ;
    }

    @PostMapping
    public ResponseEntity<Persona> create(@RequestBody Persona persona) throws Exception {
        return new ResponseEntity<>(personaService.create(persona), HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<Object> update(@RequestBody Persona persona) throws Exception {
        personaService.update(persona);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Persona> findById(@PathVariable("id") Integer idPersona){
        return new ResponseEntity<>(personaService.findById(idPersona), HttpStatus.OK);
    }
}

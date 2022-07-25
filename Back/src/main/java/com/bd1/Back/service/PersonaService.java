package com.bd1.Back.service;

import com.bd1.Back.entity.Persona;
import com.bd1.Back.repository.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class PersonaService {

    @Autowired
    private PersonaRepository personaRepository;

    public Persona create(Persona persona) {
        System.out.println(persona.toString());

        return personaRepository.save(persona);
    }

    public Persona update(Persona persona)  {
        System.out.println(persona.toString());
       return personaRepository.save(persona);
    }

    public Persona findById(Integer id){
        Optional<Persona> persona = personaRepository.findById(id);
        return persona.orElse(null);
    }

    public List<Persona> findAll(){return personaRepository.findAll();}

}

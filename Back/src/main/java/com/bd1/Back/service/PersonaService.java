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

    @Transactional
    public Persona create(Persona persona) throws Exception {
        try {
            if (!personaRepository.existsById(persona.getId())){
                personaRepository.save(persona);
                return persona;
            } else {
                throw new Exception();
            }
        } catch (Exception e){
            e.printStackTrace();
            throw e;
        }
    }

    @Transactional
    public Persona update(Persona persona) throws Exception {
        if (personaRepository.existsById(persona.getId())){
            try {
                Persona persona1 = personaRepository.findById(persona.getId()).get();
                persona1.setNombres(persona.getNombres());
                persona1.setApellidos(persona.getApellidos());
                return persona1;
            } catch (Exception e){
                throw e;
            }
        } else {
            throw new Exception();
        }
    }

    public Persona findById(Integer id){
        Optional<Persona> persona = personaRepository.findById(id);
        return persona.orElse(null);
    }

    public List<Persona> findAll(){return personaRepository.findAll();}

}

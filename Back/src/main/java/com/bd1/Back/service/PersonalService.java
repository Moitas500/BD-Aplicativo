package com.bd1.Back.service;

import com.bd1.Back.entity.Personal;
import com.bd1.Back.repository.PersonalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class PersonalService {

    @Autowired
    private PersonalRepository personalRepository;

    public Personal create(Personal personal) {
        System.out.println(personal.toString());
        return personalRepository.save(personal);
    }

    public Personal update(Personal persona) {
        return personalRepository.save(persona);
    }

    public Personal findById(String id){
        Optional<Personal> persona = personalRepository.findById(id);
        return persona.orElse(null);
    }

    public List<Personal> findAll(){return personalRepository.findAll();}

}

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

    @Transactional
    public Personal create(Personal personal) throws Exception {
        try {
            if (!personalRepository.existsById(personal.getId())){
                personalRepository.save(personal);
                return personal;
            } else {
                throw new Exception();
            }
        } catch (Exception e){
            e.printStackTrace();
            throw e;
        }
    }

    @Transactional
    public Personal update(Personal persona) throws Exception {
        if (personalRepository.existsById(persona.getId())){
            try {
                Personal personal1 = personalRepository.findById(persona.getId()).get();
                personal1.setIdCargo(persona.getIdCargo());
                personal1.setIdSede(persona.getIdSede());
                personal1.setIdJefe(persona.getIdJefe());
                return personal1;
            } catch (Exception e){
                throw e;
            }
        } else {
            throw new Exception();
        }
    }

    public Personal findById(String id){
        Optional<Personal> persona = personalRepository.findById(id);
        return persona.orElse(null);
    }

    public List<Personal> findAll(){return personalRepository.findAll();}

}

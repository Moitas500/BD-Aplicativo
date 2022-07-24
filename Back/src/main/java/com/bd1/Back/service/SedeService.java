package com.bd1.Back.service;

import com.bd1.Back.entity.Sede;
import com.bd1.Back.repository.SedeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SedeService {
    @Autowired
    private SedeRepository sedeRepository;

    public List<Sede> todasSedes(){return sedeRepository.findAll();}

}

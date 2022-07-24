package com.bd1.Back.service;

import com.bd1.Back.entity.Cargo;
import com.bd1.Back.repository.CargoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CargoService {

    @Autowired
    private CargoRepository cargoRepository;

    public List<Cargo> todosCargos(){return cargoRepository.findAll();}

}

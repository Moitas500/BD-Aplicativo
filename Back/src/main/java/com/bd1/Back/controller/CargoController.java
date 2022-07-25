package com.bd1.Back.controller;

import com.bd1.Back.entity.Cargo;
import com.bd1.Back.service.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CargoController {

    @Autowired
    private CargoService cargoService;

    @GetMapping(value = "leerCargos")
    public List<Cargo> leerCargos(){
        return cargoService.todosCargos();
    }
}

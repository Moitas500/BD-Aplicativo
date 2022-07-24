package com.bd1.Back.controller;

import com.bd1.Back.entity.Cargo;
import com.bd1.Back.service.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@CrossOrigin
public class CargoController {

    @Autowired
    private CargoService cargoService;

    @RequestMapping(value = "leerCargos", method = RequestMethod.GET)
    public List<Cargo> leerCargos(){
        return cargoService.todosCargos();
    }
}

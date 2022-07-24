package com.bd1.Back.controller;

import com.bd1.Back.entity.Sede;
import com.bd1.Back.service.SedeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class SedeController {

    @Autowired
    private SedeService sedeService;

    @RequestMapping(value = "leerSedes", method = RequestMethod.GET)
    public List<Sede> leerSedes(){
        return sedeService.todasSedes();
    }

}

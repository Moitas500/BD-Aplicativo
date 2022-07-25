package com.bd1.Back.controller;

import com.bd1.Back.entity.Personal;
import com.bd1.Back.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("personal")
public class PersonalController {
    @Autowired
    private PersonalService personalService;

    @GetMapping
    public List<Personal> finAll(){
        return personalService.findAll();
    }

    @PostMapping
    public Personal create(@RequestBody Personal personal) throws Exception {
        return personalService.create(personal);
    }

    @PutMapping
    public Personal update(@RequestBody Personal personal) throws Exception {
        return personalService.update(personal);
    }

    @GetMapping("/{id}")
    public Personal findById(@PathVariable("id") String idPersonal){
        return personalService.findById(idPersonal);
    }
}

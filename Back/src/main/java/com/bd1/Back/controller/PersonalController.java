package com.bd1.Back.controller;

import com.bd1.Back.entity.Personal;
import com.bd1.Back.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("personal")
public class PersonalController {
    @Autowired
    private PersonalService personalService;

    @GetMapping
    public ResponseEntity<List<Personal>> finAll(){
        return new ResponseEntity<>(personalService.findAll(), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Personal> create(@RequestBody Personal personal) throws Exception {
        return new ResponseEntity<>(personalService.create(personal), HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<Personal> update(@RequestBody Personal personal) throws Exception {
        return new ResponseEntity<>(personalService.update(personal), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Personal> findById(@PathVariable("id") String idPersonal){
        return new ResponseEntity<>(personalService.findById(idPersonal), HttpStatus.OK);
    }
}

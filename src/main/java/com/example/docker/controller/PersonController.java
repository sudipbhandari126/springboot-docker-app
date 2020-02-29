package com.example.docker.controller;

import com.example.docker.model.Person;
import com.example.docker.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {
    @Autowired
    private PersonRepository personRepository;

    @GetMapping(path = "/persons")
    public Iterable<Person> getPersons(){
        return personRepository.findAll();
    }
}

package com.example.api.controller;

import com.example.api.model.Person;
import com.example.api.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController  // Indique que c'est un contrôleur REST
@RequestMapping("/api/persons")  // URL de base pour tous les endpoints
public class PersonController {

    @Autowired
    private PersonService personService;

    // GET - Récupérer toutes les personnes
    // URL : http://localhost:9090/api/persons
    @GetMapping
    public Iterable<Person> getAllPersons() {
        return personService.getPersons();
    }

    // GET - Récupérer une personne par son ID
    // URL : http://localhost:9090/api/persons/1
    @GetMapping("/{id}")
    public Optional<Person> getPersonById(@PathVariable Integer id) {
        return personService.getPerson(id);
    }

    // POST - Créer une nouvelle personne
    // URL : http://localhost:9090/api/persons
    @PostMapping
    public Person createPerson(@RequestBody Person person) {
        return personService.savePerson(person);
    }

    // PUT - Modifier complètement une personne
    // URL : http://localhost:9090/api/persons/1
    @PutMapping("/person/{id}")
    public Person updatePerson(@PathVariable("id") Integer id, @RequestBody Person person) {
        Optional<Person> personOptional = personService.getPerson(id);
        if (personOptional.isPresent()) {
            Person personToUpdate = personOptional.get();

            String firstName = person.getFirstName();
            if (firstName != null) {
                personToUpdate.setFirstName(firstName);
            }

            String lastName = person.getLastName();
            if (lastName != null) {
                personToUpdate.setLastName(lastName);
            }

            personService.savePerson(personToUpdate);
            return personToUpdate;
        } else {
            return null;
        }
    }

    @DeleteMapping("/person/{id}")
    public void deletePerson(@PathVariable("id") Integer id) {
        personService.deletePerson(id);
    }
}

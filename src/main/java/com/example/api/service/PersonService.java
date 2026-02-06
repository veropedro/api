package com.example.api.service;


import com.example.api.model.Person;
import com.example.api.repository.PersonRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Data
@Service
public class PersonService {

    @Autowired
    private PersonRepository personRepository;

    // Récupérer une personne par ID
    public Optional<Person> getPerson(Integer id) {
        return personRepository.findById(id);
    }

    // Récupérer toutes les personnes
    public Iterable<Person> getPersons() {
        return personRepository.findAll();
    }

    // Supprimer une personne par ID
    public void deletePerson(Integer id) {
        personRepository.deleteById(id);
    }

    // Créer ou mettre à jour une personne
    public Person savePerson(Person person) {
        return personRepository.save(person);
    }
}



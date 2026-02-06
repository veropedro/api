package com.example.api.repository;


import com.example.api.model.Person;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends CrudRepository<Person, Integer> {
    // pas de code nécessaire ici
    // CrudRepository nous donne déjà le CRUD automatiquement
}

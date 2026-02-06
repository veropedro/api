package com.example.api.model;

import jakarta.persistence.*;
import lombok.Data;

@Data  // Lombok génère automatiquement les getter, setter, toString, etc.
@Entity  // Indique que c'est une entité JPA
@Table(name="Person")  // Nom de la table dans la BDD
public class Person {

    @Id  // Clé primaire
    @Column(name="id")  // Lié à la colonne id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-incrémentation
    private int id;

    @Column(name="firstname")
    private String firstName;

    @Column(name="lastname")
    private String lastName;
}


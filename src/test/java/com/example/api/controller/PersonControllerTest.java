package com.example.api.controller;


import com.example.api.service.PersonService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = PersonController.class)
class PersonControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private PersonService personService;

    // Test GET toutes les personnes
    @Test
    void getPersonsTest() throws Exception {
        when(personService.getPersons()).thenReturn(List.of());

        mockMvc.perform(get("/api/persons"))
                .andExpect(status().isOk());
    }

    // Test GET une personne par ID
    @Test
    void getPersonByIdTest() throws Exception {
        mockMvc.perform(get("/api/persons/1"))
                .andExpect(status().isOk());
    }

//    // Test DELETE une personne
//    @Test
//    void deletePersonTest() throws Exception {
//        mockMvc.perform(org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete("/api/persons/1"))
//                .andExpect(status().isOk());
//    }
}


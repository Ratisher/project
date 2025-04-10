package org.example.exampleprojectapi.controller;

import org.example.exampleprojectapi.repository.companyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/company")
public class companyController {
    @Autowired
    private companyRepository companyRepo;

    @GetMapping("/getById/{id}")
    public ResponseEntity getCompanyById(@PathVariable int id) {
        if (companyRepo.findById(id).isPresent()) {
            return ResponseEntity.ok(companyRepo.findById(id).get());
        }
        else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}

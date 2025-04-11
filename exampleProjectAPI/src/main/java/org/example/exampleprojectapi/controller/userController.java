package org.example.exampleprojectapi.controller;

import org.example.exampleprojectapi.entity.Polzovateli;
import org.example.exampleprojectapi.entity.Roli;
import org.example.exampleprojectapi.repository.roleRepository;
import org.example.exampleprojectapi.repository.userRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/user")
public class userController {
    @Autowired
    private userRepository userRepository;

    @Autowired
    private roleRepository roleRepository;

    @GetMapping("/authorization")
    public ResponseEntity getAuthorization(@RequestParam("email") String email, @RequestParam("password") String password) {
        if (userRepository.findByEmailAndPassword(email, password) == null) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
        else {
            return ResponseEntity.ok(userRepository.findByEmailAndPassword(email, password));
        }
    };

    @PostMapping("/addUser/{role}")
    public ResponseEntity addUser(@RequestBody Polzovateli polz, @PathVariable("role") String role)
    {
        Roli rol = roleRepository.findById(Integer.parseInt(role)).get();
        polz.setIdRol(rol);
        Polzovateli user = userRepository.save(polz);
        if (user == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        else {
            return  ResponseEntity.ok(user);
        }
    }

    @GetMapping("/userById/{id}")
    public ResponseEntity getUserById(@PathVariable("id") String id) {
        if (userRepository.findById(Integer.parseInt(id)).get() == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        else {
            return ResponseEntity.ok(userRepository.findById(Integer.parseInt(id)).get());
        }
    }
}

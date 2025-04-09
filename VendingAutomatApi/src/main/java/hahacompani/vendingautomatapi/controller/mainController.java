package hahacompani.vendingautomatapi.controller;

import hahacompani.vendingautomatapi.entity.Polzovateli;
import hahacompani.vendingautomatapi.repository.polzovateliRepository;
import hahacompani.vendingautomatapi.repository.taRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
@RequestMapping("/VenApar")
public class mainController {

    @Autowired
    private polzovateliRepository polzovateliRepository;

    @Autowired
    private taRepository taRepository;


    @GetMapping("/login")
    public ResponseEntity login(
            @RequestParam("parol") String parol,
            @RequestParam("login") String login) {
        Polzovateli polz = polzovateliRepository.login(parol, login);
        if (polz != null) {
            return ResponseEntity.ok(polz);
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/getAllTA")
    public ResponseEntity getAllTA() {
        if (taRepository.findAll() != null) {
            return ResponseEntity.ok(taRepository.findAll());
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

}

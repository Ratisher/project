package hahacompani.vendingautomatapi.controller;

import hahacompani.vendingautomatapi.entity.Polzovateli;
import hahacompani.vendingautomatapi.entity.Vendingovieavtomati;
import hahacompani.vendingautomatapi.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Random;

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

    @GetMapping("/getTA")
    public ResponseEntity getTA(@RequestParam("id") String id) {
        if (taRepository.findById(Integer.valueOf(id)).get() != null) {
            return ResponseEntity.ok(taRepository.findById(Integer.valueOf(id)).get());
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @Autowired
    private modemiRepository modemiRepository;

    @GetMapping("/minusModem")
    public ResponseEntity minusModem(@RequestParam("id") int id) {
        if (taRepository.findById(Integer.valueOf(id)).get() != null) {
            Vendingovieavtomati ta = taRepository.findById(Integer.valueOf(id)).get();
            ta.setIdModem(modemiRepository.findById(-1).get());
            taRepository.save(ta);
            return ResponseEntity.ok(true);
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/delleteTA")
    public ResponseEntity delleteTA(@RequestParam("id") String id) {
        if (taRepository.findById(Integer.valueOf(id)).get() != null) {
            taRepository.delete(taRepository.findById(Integer.valueOf(id)).get());
            return ResponseEntity.ok(true);
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @Autowired
    private modeliRepository modeliRepository;

    @GetMapping("/getAllModel")
    public ResponseEntity getAllModel() {
        if (modeliRepository.findAll() != null) {
            return ResponseEntity.ok(modeliRepository.findAll());
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/setTA")
    public ResponseEntity setTA(@RequestParam("id") int id,
                                @RequestParam("name") String name,
                                @RequestParam("oplataKupurami") String oplataKupurami,
                                @RequestParam("oplataKartoi") String oplataKartoi) {
        if (taRepository.findById(Integer.valueOf(id)).get() != null) {
            Vendingovieavtomati ta = taRepository.findById(Integer.valueOf(id)).get();
            ta.setNazvaniye(name);
            ta.setOplataKupurami(oplataKupurami);
            ta.setOplataKartoi(oplataKartoi);
            taRepository.save(ta);
            return ResponseEntity.ok(true);
        } else {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/getStatusSeti")
    public ResponseEntity getStatusSeti() {
        Random random = new Random();

        int randomNum = random.nextInt(5-1+1)+1;

        return ResponseEntity.ok(randomNum);

    }

    @Autowired
    private companiRepository companyRepo;

    @GetMapping("/allTAPoComp/{id}")
    public ResponseEntity getCompanyById(@PathVariable("id") int id) {
        if (taRepository.findByidCompanya(companyRepo.findById(id).get().getId()) != null) {
            return ResponseEntity.ok(taRepository.findByidCompanya(companyRepo.findById(id).get().getId()));
        }
        else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}

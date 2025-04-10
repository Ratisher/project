package org.example.exampleprojectapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "chasoviepiyasa")
public class Chasoviepiyasa {
    @Id
    @Column(name = "idChasovoyPoyas", nullable = false)
    private Integer id;

    @Column(name = "nazvaniye", length = 100)
    private String nazvaniye;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNazvaniye() {
        return nazvaniye;
    }

    public void setNazvaniye(String nazvaniye) {
        this.nazvaniye = nazvaniye;
    }

}
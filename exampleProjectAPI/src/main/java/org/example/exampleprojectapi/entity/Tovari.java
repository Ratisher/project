package org.example.exampleprojectapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tovari")
public class Tovari {
    @Id
    @Column(name = "idTovar", nullable = false)
    private Integer id;

    @Column(name = "nazvaniye", length = 200)
    private String nazvaniye;

    @Column(name = "opisaniye")
    private String opisaniye;

    @Column(name = "cena")
    private Double cena;

    @Column(name = "colichestvo")
    private Integer colichestvo;

    @Column(name = "minimalnoeZnacenie")
    private Integer minimalnoeZnacenie;

    @Column(name = "srednieProdashi")
    private Double srednieProdashi;

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

    public String getOpisaniye() {
        return opisaniye;
    }

    public void setOpisaniye(String opisaniye) {
        this.opisaniye = opisaniye;
    }

    public Double getCena() {
        return cena;
    }

    public void setCena(Double cena) {
        this.cena = cena;
    }

    public Integer getColichestvo() {
        return colichestvo;
    }

    public void setColichestvo(Integer colichestvo) {
        this.colichestvo = colichestvo;
    }

    public Integer getMinimalnoeZnacenie() {
        return minimalnoeZnacenie;
    }

    public void setMinimalnoeZnacenie(Integer minimalnoeZnacenie) {
        this.minimalnoeZnacenie = minimalnoeZnacenie;
    }

    public Double getSrednieProdashi() {
        return srednieProdashi;
    }

    public void setSrednieProdashi(Double srednieProdashi) {
        this.srednieProdashi = srednieProdashi;
    }

}
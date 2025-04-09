package org.example.exampleprojectapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.time.LocalDate;

@Entity
@Table(name = "vendingovieavtomati")
public class Vendingovieavtomati {
    @Id
    @Column(name = "idAvtomat", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idModel")
    private Modeli idModel;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idMarka")
    private Marki idMarka;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idTipOplati")
    private Tipioplat idTipOplati;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idStatus")
    private Statusi idStatus;

    @Column(name = "addres")
    private String addres;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idMestoUstanovki")
    private Mestaustanovki idMestoUstanovki;

    @Column(name = "dataUstanovki")
    private LocalDate dataUstanovki;

    @Column(name = "sovokupniDohod")
    private Integer sovokupniDohod;

    @Column(name = "dataPoslednegoObslushivaniya")
    private LocalDate dataPoslednegoObslushivaniya;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Modeli getIdModel() {
        return idModel;
    }

    public void setIdModel(Modeli idModel) {
        this.idModel = idModel;
    }

    public Marki getIdMarka() {
        return idMarka;
    }

    public void setIdMarka(Marki idMarka) {
        this.idMarka = idMarka;
    }

    public Tipioplat getIdTipOplati() {
        return idTipOplati;
    }

    public void setIdTipOplati(Tipioplat idTipOplati) {
        this.idTipOplati = idTipOplati;
    }

    public Statusi getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Statusi idStatus) {
        this.idStatus = idStatus;
    }

    public String getAddres() {
        return addres;
    }

    public void setAddres(String addres) {
        this.addres = addres;
    }

    public Mestaustanovki getIdMestoUstanovki() {
        return idMestoUstanovki;
    }

    public void setIdMestoUstanovki(Mestaustanovki idMestoUstanovki) {
        this.idMestoUstanovki = idMestoUstanovki;
    }

    public LocalDate getDataUstanovki() {
        return dataUstanovki;
    }

    public void setDataUstanovki(LocalDate dataUstanovki) {
        this.dataUstanovki = dataUstanovki;
    }

    public Integer getSovokupniDohod() {
        return sovokupniDohod;
    }

    public void setSovokupniDohod(Integer sovokupniDohod) {
        this.sovokupniDohod = sovokupniDohod;
    }

    public LocalDate getDataPoslednegoObslushivaniya() {
        return dataPoslednegoObslushivaniya;
    }

    public void setDataPoslednegoObslushivaniya(LocalDate dataPoslednegoObslushivaniya) {
        this.dataPoslednegoObslushivaniya = dataPoslednegoObslushivaniya;
    }

}
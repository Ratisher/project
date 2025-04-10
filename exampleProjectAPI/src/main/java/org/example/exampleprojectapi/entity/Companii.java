package org.example.exampleprojectapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "companii")
public class Companii {
    @Id
    @Column(name = "idCompanya", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idVishayaCompaniya")
    private Vishayacompanii idVishayaCompaniya;

    @Column(name = "adres", length = 100)
    private String adres;

    @Column(name = "nazvaniye", length = 100)
    private String nazvaniye;

    @Column(name = "contacti", length = 250)
    private String contacti;

    @Column(name = "primechaniya", length = 100)
    private String primechaniya;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Vishayacompanii getIdVishayaCompaniya() {
        return idVishayaCompaniya;
    }

    public void setIdVishayaCompaniya(Vishayacompanii idVishayaCompaniya) {
        this.idVishayaCompaniya = idVishayaCompaniya;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getNazvaniye() {
        return nazvaniye;
    }

    public void setNazvaniye(String nazvaniye) {
        this.nazvaniye = nazvaniye;
    }

    public String getContacti() {
        return contacti;
    }

    public void setContacti(String contacti) {
        this.contacti = contacti;
    }

    public String getPrimechaniya() {
        return primechaniya;
    }

    public void setPrimechaniya(String primechaniya) {
        this.primechaniya = primechaniya;
    }

}
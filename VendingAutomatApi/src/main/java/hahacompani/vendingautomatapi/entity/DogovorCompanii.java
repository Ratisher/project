package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "dogovor_companii")
public class DogovorCompanii {
    @Id
    @Column(name = "iddogovor_companii", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "companii_idCompanya", nullable = false)
    private Companii companiiIdcompanya;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "dogovor_iddogovor", nullable = false)
    private Dogovor dogovorIddogovor;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Companii getCompaniiIdcompanya() {
        return companiiIdcompanya;
    }

    public void setCompaniiIdcompanya(Companii companiiIdcompanya) {
        this.companiiIdcompanya = companiiIdcompanya;
    }

    public Dogovor getDogovorIddogovor() {
        return dogovorIddogovor;
    }

    public void setDogovorIddogovor(Dogovor dogovorIddogovor) {
        this.dogovorIddogovor = dogovorIddogovor;
    }

}
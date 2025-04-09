package org.example.exampleprojectapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "prodashi")
public class Prodashi {
    @Id
    @Column(name = "idProdasha", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idAvtomat")
    private Vendingovieavtomati idAvtomat;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idTovar")
    private Tovari idTovar;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Vendingovieavtomati getIdAvtomat() {
        return idAvtomat;
    }

    public void setIdAvtomat(Vendingovieavtomati idAvtomat) {
        this.idAvtomat = idAvtomat;
    }

    public Tovari getIdTovar() {
        return idTovar;
    }

    public void setIdTovar(Tovari idTovar) {
        this.idTovar = idTovar;
    }

}
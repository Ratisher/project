package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "statusdogovora")
public class Statusdogovora {
    @Id
    @Column(name = "idstatusDogovora", nullable = false)
    private Integer id;

    @Column(name = "naznanye", length = 45)
    private String naznanye;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNaznanye() {
        return naznanye;
    }

    public void setNaznanye(String naznanye) {
        this.naznanye = naznanye;
    }

}
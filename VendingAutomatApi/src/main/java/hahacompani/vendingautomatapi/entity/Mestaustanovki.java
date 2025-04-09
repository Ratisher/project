package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "mestaustanovki")
public class Mestaustanovki {
    @Id
    @Column(name = "idMestoUstanovki", nullable = false)
    private Integer id;

    @Column(name = "nazvaniye", length = 100)
    private String nazvaniye;

    @Column(name = "opisanie", length = 250)
    private String opisanie;

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

    public String getOpisanie() {
        return opisanie;
    }

    public void setOpisanie(String opisanie) {
        this.opisanie = opisanie;
    }

}
package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.time.LocalDate;

@Entity
@Table(name = "obslushivaniye")
public class Obslushivaniye {
    @Id
    @Column(name = "idObslushovaniye", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idAvtomat")
    private Vendingovieavtomati idAvtomat;

    @Column(name = "data")
    private LocalDate data;

    @Column(name = "opisaniye")
    private String opisaniye;

    @Column(name = "problemi")
    private String problemi;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idPolzovatel")
    private Polzovateli idPolzovatel;

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

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public String getOpisaniye() {
        return opisaniye;
    }

    public void setOpisaniye(String opisaniye) {
        this.opisaniye = opisaniye;
    }

    public String getProblemi() {
        return problemi;
    }

    public void setProblemi(String problemi) {
        this.problemi = problemi;
    }

    public Polzovateli getIdPolzovatel() {
        return idPolzovatel;
    }

    public void setIdPolzovatel(Polzovateli idPolzovatel) {
        this.idPolzovatel = idPolzovatel;
    }

}
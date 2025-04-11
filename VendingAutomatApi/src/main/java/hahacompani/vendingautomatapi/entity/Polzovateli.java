package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "polzovateli")
public class Polzovateli {
    @Id
    @Column(name = "idPolzovatel", nullable = false)
    private Integer id;

    @Column(name = "familiya", length = 100)
    private String familiya;

    @Column(name = "imya", length = 100)
    private String imya;

    @Column(name = "otchestvo", length = 100)
    private String otchestvo;

    @Column(name = "email", length = 200)
    private String email;

    @Column(name = "telephon", length = 15)
    private String telephon;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idRol")
    private Roli idRol;

    @Column(name = "parol", length = 100)
    private String parol;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFamiliya() {
        return familiya;
    }

    public void setFamiliya(String familiya) {
        this.familiya = familiya;
    }

    public String getImya() {
        return imya;
    }

    public void setImya(String imya) {
        this.imya = imya;
    }

    public String getOtchestvo() {
        return otchestvo;
    }

    public void setOtchestvo(String otchestvo) {
        this.otchestvo = otchestvo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephon() {
        return telephon;
    }

    public void setTelephon(String telephon) {
        this.telephon = telephon;
    }

    public Roli getIdRol() {
        return idRol;
    }

    public void setIdRol(Roli idRol) {
        this.idRol = idRol;
    }

    public String getParol() {
        return parol;
    }

    public void setParol(String parol) {
        this.parol = parol;
    }

}
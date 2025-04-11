package hahacompani.vendingautomatapi.entity;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "dogovor")
public class Dogovor {
    @Id
    @Column(name = "iddogovor", nullable = false)
    private Integer id;

    @Column(name = "dataPodpisanya")
    private LocalDate dataPodpisanya;

    @Column(name = "srock", length = 45)
    private String srock;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "statusDogovora_idstatusDogovora", nullable = false)
    private Statusdogovora statusdogovoraIdstatusdogovora;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getDataPodpisanya() {
        return dataPodpisanya;
    }

    public void setDataPodpisanya(LocalDate dataPodpisanya) {
        this.dataPodpisanya = dataPodpisanya;
    }

    public String getSrock() {
        return srock;
    }

    public void setSrock(String srock) {
        this.srock = srock;
    }

    public Statusdogovora getStatusdogovoraIdstatusdogovora() {
        return statusdogovoraIdstatusdogovora;
    }

    public void setStatusdogovoraIdstatusdogovora(Statusdogovora statusdogovoraIdstatusdogovora) {
        this.statusdogovoraIdstatusdogovora = statusdogovoraIdstatusdogovora;
    }

}
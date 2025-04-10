package org.example.exampleprojectapi.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.time.LocalDate;

@Entity
@Table(name = "vendingovieavtomati")
public class Vendingovieavtomati {
    @Id
    @Column(name = "idAvtomat", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idModel")
    private Modeli idModel;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idMarka")
    private Marki idMarka;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idStatus")
    private Statusi idStatus;

    @Column(name = "addres")
    private String addres;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idMestoUstanovki")
    private Mestaustanovki idMestoUstanovki;

    @Column(name = "dataUstanovki")
    private LocalDate dataUstanovki;

    @Column(name = "sovokupniDohod")
    private Integer sovokupniDohod;

    @Column(name = "dataPoslednegoObslushivaniya")
    private LocalDate dataPoslednegoObslushivaniya;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idReshimRaboti")
    private Reshimiraboti idReshimRaboti;

    @Column(name = "nazvaniye", length = 100)
    private String nazvaniye;

    @Column(name = "coordinati", length = 70)
    private String coordinati;

    @Column(name = "vremyaRaboti", length = 30)
    private String vremyaRaboti;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idChasovoyPoyas")
    private Chasoviepiyasa idChasovoyPoyas;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idTovarnayaMatrica")
    private Tovarniimatrici idTovarnayaMatrica;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idCritichescoeZnacheniye")
    private Shablonicritticeskihznacheniy idCritichescoeZnacheniye;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idShablonYvedomleniy")
    private Shabloniuvedomliniy idShablonYvedomleniy;

    @Column(name = "idKlient")
    private Integer idKlient;

    @ColumnDefault("'0'")
    @Column(name = "oplataMonetami", length = 1)
    private String oplataMonetami;

    @ColumnDefault("'0'")
    @Column(name = "oplataQR", length = 1)
    private String oplataQR;

    @ColumnDefault("'0'")
    @Column(name = "oplataKupurami", length = 1)
    private String oplataKupurami;

    @ColumnDefault("'0'")
    @Column(name = "oplataKartoi", length = 1)
    private String oplataKartoi;

    @Column(name = "RFIDcartiObclushivaniya", length = 100)
    private String rFIDcartiObclushivaniya;

    @Column(name = "RFIDcartiInkasacii", length = 100)
    private String rFIDcartiInkasacii;

    @Column(name = "RFIDcartiZagruzki", length = 100)
    private String rFIDcartiZagruzki;

    @Column(name = "primechaniya")
    private String primechaniya;

    @ColumnDefault("'Средний'")
    @Column(name = "prioritetObslushivaniya", length = 100)
    private String prioritetObslushivaniya;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idModem")
    private Modemi idModem;

    @ManyToOne(fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "idCompanya")
    private Companii idCompanya;

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

    public Reshimiraboti getIdReshimRaboti() {
        return idReshimRaboti;
    }

    public void setIdReshimRaboti(Reshimiraboti idReshimRaboti) {
        this.idReshimRaboti = idReshimRaboti;
    }

    public String getNazvaniye() {
        return nazvaniye;
    }

    public void setNazvaniye(String nazvaniye) {
        this.nazvaniye = nazvaniye;
    }

    public String getCoordinati() {
        return coordinati;
    }

    public void setCoordinati(String coordinati) {
        this.coordinati = coordinati;
    }

    public String getVremyaRaboti() {
        return vremyaRaboti;
    }

    public void setVremyaRaboti(String vremyaRaboti) {
        this.vremyaRaboti = vremyaRaboti;
    }

    public Chasoviepiyasa getIdChasovoyPoyas() {
        return idChasovoyPoyas;
    }

    public void setIdChasovoyPoyas(Chasoviepiyasa idChasovoyPoyas) {
        this.idChasovoyPoyas = idChasovoyPoyas;
    }

    public Tovarniimatrici getIdTovarnayaMatrica() {
        return idTovarnayaMatrica;
    }

    public void setIdTovarnayaMatrica(Tovarniimatrici idTovarnayaMatrica) {
        this.idTovarnayaMatrica = idTovarnayaMatrica;
    }

    public Shablonicritticeskihznacheniy getIdCritichescoeZnacheniye() {
        return idCritichescoeZnacheniye;
    }

    public void setIdCritichescoeZnacheniye(Shablonicritticeskihznacheniy idCritichescoeZnacheniye) {
        this.idCritichescoeZnacheniye = idCritichescoeZnacheniye;
    }

    public Shabloniuvedomliniy getIdShablonYvedomleniy() {
        return idShablonYvedomleniy;
    }

    public void setIdShablonYvedomleniy(Shabloniuvedomliniy idShablonYvedomleniy) {
        this.idShablonYvedomleniy = idShablonYvedomleniy;
    }

    public Integer getIdKlient() {
        return idKlient;
    }

    public void setIdKlient(Integer idKlient) {
        this.idKlient = idKlient;
    }

    public String getOplataMonetami() {
        return oplataMonetami;
    }

    public void setOplataMonetami(String oplataMonetami) {
        this.oplataMonetami = oplataMonetami;
    }

    public String getOplataQR() {
        return oplataQR;
    }

    public void setOplataQR(String oplataQR) {
        this.oplataQR = oplataQR;
    }

    public String getOplataKupurami() {
        return oplataKupurami;
    }

    public void setOplataKupurami(String oplataKupurami) {
        this.oplataKupurami = oplataKupurami;
    }

    public String getOplataKartoi() {
        return oplataKartoi;
    }

    public void setOplataKartoi(String oplataKartoi) {
        this.oplataKartoi = oplataKartoi;
    }

    public String getRFIDcartiObclushivaniya() {
        return rFIDcartiObclushivaniya;
    }

    public void setRFIDcartiObclushivaniya(String rFIDcartiObclushivaniya) {
        this.rFIDcartiObclushivaniya = rFIDcartiObclushivaniya;
    }

    public String getRFIDcartiInkasacii() {
        return rFIDcartiInkasacii;
    }

    public void setRFIDcartiInkasacii(String rFIDcartiInkasacii) {
        this.rFIDcartiInkasacii = rFIDcartiInkasacii;
    }

    public String getRFIDcartiZagruzki() {
        return rFIDcartiZagruzki;
    }

    public void setRFIDcartiZagruzki(String rFIDcartiZagruzki) {
        this.rFIDcartiZagruzki = rFIDcartiZagruzki;
    }

    public String getPrimechaniya() {
        return primechaniya;
    }

    public void setPrimechaniya(String primechaniya) {
        this.primechaniya = primechaniya;
    }

    public String getPrioritetObslushivaniya() {
        return prioritetObslushivaniya;
    }

    public void setPrioritetObslushivaniya(String prioritetObslushivaniya) {
        this.prioritetObslushivaniya = prioritetObslushivaniya;
    }

    public Modemi getIdModem() {
        return idModem;
    }

    public void setIdModem(Modemi idModem) {
        this.idModem = idModem;
    }

    public Companii getIdCompanya() {
        return idCompanya;
    }

    public void setIdCompanya(Companii idCompanya) {
        this.idCompanya = idCompanya;
    }

}
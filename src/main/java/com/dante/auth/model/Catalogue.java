package com.dante.auth.model;

import javax.persistence.*;

@Entity
@Table(name = "catalogue")
public class Catalogue {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idCatalogue;
    @Column
    private String ten;
    @Column
    private String chitiet;

    public Integer getIdCatalogue() {
        return idCatalogue;
    }

    public void setIdCatalogue(Integer idCatalogue) {
        this.idCatalogue = idCatalogue;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }
}

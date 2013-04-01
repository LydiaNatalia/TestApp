// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Biaya;
import com.rpll.app.model.Mahasiswa;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect Biaya_Roo_DbManaged {
    
    @OneToMany(mappedBy = "kodeBiaya")
    private Set<Mahasiswa> Biaya.mahasiswas;
    
    @Column(name = "BIAYA_TETAP")
    private Integer Biaya.biayaTetap;
    
    @Column(name = "BIAYA_SKS")
    private Integer Biaya.biayaSks;
    
    @Column(name = "BIAYA_PRAKTIKUM")
    private Integer Biaya.biayaPraktikum;
    
    @Column(name = "BIAYA_MHS")
    private Integer Biaya.biayaMhs;
    
    public Set<Mahasiswa> Biaya.getMahasiswas() {
        return mahasiswas;
    }
    
    public void Biaya.setMahasiswas(Set<Mahasiswa> mahasiswas) {
        this.mahasiswas = mahasiswas;
    }
    
    public Integer Biaya.getBiayaTetap() {
        return biayaTetap;
    }
    
    public void Biaya.setBiayaTetap(Integer biayaTetap) {
        this.biayaTetap = biayaTetap;
    }
    
    public Integer Biaya.getBiayaSks() {
        return biayaSks;
    }
    
    public void Biaya.setBiayaSks(Integer biayaSks) {
        this.biayaSks = biayaSks;
    }
    
    public Integer Biaya.getBiayaPraktikum() {
        return biayaPraktikum;
    }
    
    public void Biaya.setBiayaPraktikum(Integer biayaPraktikum) {
        this.biayaPraktikum = biayaPraktikum;
    }
    
    public Integer Biaya.getBiayaMhs() {
        return biayaMhs;
    }
    
    public void Biaya.setBiayaMhs(Integer biayaMhs) {
        this.biayaMhs = biayaMhs;
    }
    
}

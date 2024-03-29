// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.BadanHukum;
import com.rpll.app.model.Fasilitas;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect BadanHukum_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "KODE_FASILITAS", referencedColumnName = "KODE_FASILITAS")
    private Fasilitas BadanHukum.kodeFasilitas;
    
    @Column(name = "NAMA_BHUKUM", length = 40)
    private String BadanHukum.namaBhukum;
    
    @Column(name = "TANGGAL_BERDIRI", length = 40)
    private String BadanHukum.tanggalBerdiri;
    
    @Column(name = "NOMOR_AKTA", length = 40)
    private String BadanHukum.nomorAkta;
    
    @Column(name = "TANGGAL_AKTA", length = 40)
    private String BadanHukum.tanggalAkta;
    
    @Column(name = "KOTA", length = 40)
    private String BadanHukum.kota;
    
    @Column(name = "ALAMAT", length = 40)
    private String BadanHukum.alamat;
    
    @Column(name = "KODE_POS", length = 20)
    private String BadanHukum.kodePos;
    
    @Column(name = "NOMOR_PENGESAHAN", length = 20)
    private String BadanHukum.nomorPengesahan;
    
    @Column(name = "TANGGAL_PENGESAHAN", length = 40)
    private String BadanHukum.tanggalPengesahan;
    
    @Column(name = "TELEPON", length = 20)
    private String BadanHukum.telepon;
    
    @Column(name = "FAKS", length = 20)
    private String BadanHukum.faks;
    
    @Column(name = "HOMEPAGE", length = 40)
    private String BadanHukum.homepage;
    
    @Column(name = "EMAIL", length = 40)
    private String BadanHukum.email;
    
    public Fasilitas BadanHukum.getKodeFasilitas() {
        return kodeFasilitas;
    }
    
    public void BadanHukum.setKodeFasilitas(Fasilitas kodeFasilitas) {
        this.kodeFasilitas = kodeFasilitas;
    }
    
    public String BadanHukum.getNamaBhukum() {
        return namaBhukum;
    }
    
    public void BadanHukum.setNamaBhukum(String namaBhukum) {
        this.namaBhukum = namaBhukum;
    }
    
    public String BadanHukum.getTanggalBerdiri() {
        return tanggalBerdiri;
    }
    
    public void BadanHukum.setTanggalBerdiri(String tanggalBerdiri) {
        this.tanggalBerdiri = tanggalBerdiri;
    }
    
    public String BadanHukum.getNomorAkta() {
        return nomorAkta;
    }
    
    public void BadanHukum.setNomorAkta(String nomorAkta) {
        this.nomorAkta = nomorAkta;
    }
    
    public String BadanHukum.getTanggalAkta() {
        return tanggalAkta;
    }
    
    public void BadanHukum.setTanggalAkta(String tanggalAkta) {
        this.tanggalAkta = tanggalAkta;
    }
    
    public String BadanHukum.getKota() {
        return kota;
    }
    
    public void BadanHukum.setKota(String kota) {
        this.kota = kota;
    }
    
    public String BadanHukum.getAlamat() {
        return alamat;
    }
    
    public void BadanHukum.setAlamat(String alamat) {
        this.alamat = alamat;
    }
    
    public String BadanHukum.getKodePos() {
        return kodePos;
    }
    
    public void BadanHukum.setKodePos(String kodePos) {
        this.kodePos = kodePos;
    }
    
    public String BadanHukum.getNomorPengesahan() {
        return nomorPengesahan;
    }
    
    public void BadanHukum.setNomorPengesahan(String nomorPengesahan) {
        this.nomorPengesahan = nomorPengesahan;
    }
    
    public String BadanHukum.getTanggalPengesahan() {
        return tanggalPengesahan;
    }
    
    public void BadanHukum.setTanggalPengesahan(String tanggalPengesahan) {
        this.tanggalPengesahan = tanggalPengesahan;
    }
    
    public String BadanHukum.getTelepon() {
        return telepon;
    }
    
    public void BadanHukum.setTelepon(String telepon) {
        this.telepon = telepon;
    }
    
    public String BadanHukum.getFaks() {
        return faks;
    }
    
    public void BadanHukum.setFaks(String faks) {
        this.faks = faks;
    }
    
    public String BadanHukum.getHomepage() {
        return homepage;
    }
    
    public void BadanHukum.setHomepage(String homepage) {
        this.homepage = homepage;
    }
    
    public String BadanHukum.getEmail() {
        return email;
    }
    
    public void BadanHukum.setEmail(String email) {
        this.email = email;
    }
    
}

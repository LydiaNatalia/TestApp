// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Departemen;
import com.rpll.app.model.Dosen;
import com.rpll.app.model.Pegawai;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

privileged aspect Dosen_Roo_DbManaged {
    
    @OneToOne
    @JoinColumn(name = "NIP", nullable = false, insertable = false, updatable = false)
    private Pegawai Dosen.pegawai;
    
    @ManyToOne
    @JoinColumn(name = "KODE_DEPART", referencedColumnName = "KODE_DEPART")
    private Departemen Dosen.kodeDepart;
    
    @Column(name = "PASS_DOSEN", length = 20)
    private String Dosen.passDosen;
    
    @Column(name = "STATUS_DOSEN", length = 40)
    private String Dosen.statusDosen;
    
    @Column(name = "GELAR", length = 40)
    private String Dosen.gelar;
    
    @Column(name = "TANGGAL_IJAZAH", length = 40)
    private String Dosen.tanggalIjazah;
    
    @Column(name = "KODE_ASAL", length = 20)
    private String Dosen.kodeAsal;
    
    @Column(name = "KODE_NEGARA", length = 20)
    private String Dosen.kodeNegara;
    
    @Column(name = "JENJANG_STUDI", length = 40)
    private String Dosen.jenjangStudi;
    
    public Pegawai Dosen.getPegawai() {
        return pegawai;
    }
    
    public void Dosen.setPegawai(Pegawai pegawai) {
        this.pegawai = pegawai;
    }
    
    public Departemen Dosen.getKodeDepart() {
        return kodeDepart;
    }
    
    public void Dosen.setKodeDepart(Departemen kodeDepart) {
        this.kodeDepart = kodeDepart;
    }
    
    public String Dosen.getPassDosen() {
        return passDosen;
    }
    
    public void Dosen.setPassDosen(String passDosen) {
        this.passDosen = passDosen;
    }
    
    public String Dosen.getStatusDosen() {
        return statusDosen;
    }
    
    public void Dosen.setStatusDosen(String statusDosen) {
        this.statusDosen = statusDosen;
    }
    
    public String Dosen.getGelar() {
        return gelar;
    }
    
    public void Dosen.setGelar(String gelar) {
        this.gelar = gelar;
    }
    
    public String Dosen.getTanggalIjazah() {
        return tanggalIjazah;
    }
    
    public void Dosen.setTanggalIjazah(String tanggalIjazah) {
        this.tanggalIjazah = tanggalIjazah;
    }
    
    public String Dosen.getKodeAsal() {
        return kodeAsal;
    }
    
    public void Dosen.setKodeAsal(String kodeAsal) {
        this.kodeAsal = kodeAsal;
    }
    
    public String Dosen.getKodeNegara() {
        return kodeNegara;
    }
    
    public void Dosen.setKodeNegara(String kodeNegara) {
        this.kodeNegara = kodeNegara;
    }
    
    public String Dosen.getJenjangStudi() {
        return jenjangStudi;
    }
    
    public void Dosen.setJenjangStudi(String jenjangStudi) {
        this.jenjangStudi = jenjangStudi;
    }
    
}
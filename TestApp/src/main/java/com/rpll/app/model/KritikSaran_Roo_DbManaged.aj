// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.KritikSaran;
import com.rpll.app.model.Mahasiswa;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect KritikSaran_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "NIM", referencedColumnName = "NIM")
    private Mahasiswa KritikSaran.nim;
    
    @Column(name = "ISI_KRITIK", length = 300)
    private String KritikSaran.isiKritik;
    
    public Mahasiswa KritikSaran.getNim() {
        return nim;
    }
    
    public void KritikSaran.setNim(Mahasiswa nim) {
        this.nim = nim;
    }
    
    public String KritikSaran.getIsiKritik() {
        return isiKritik;
    }
    
    public void KritikSaran.setIsiKritik(String isiKritik) {
        this.isiKritik = isiKritik;
    }
    
}
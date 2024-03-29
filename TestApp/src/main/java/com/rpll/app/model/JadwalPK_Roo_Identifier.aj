// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.JadwalPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect JadwalPK_Roo_Identifier {
    
    declare @type: JadwalPK: @Embeddable;
    
    @Column(name = "KODE_KELAS", nullable = false, length = 20)
    private String JadwalPK.kodeKelas;
    
    @Column(name = "NIP", nullable = false, length = 20)
    private String JadwalPK.nip;
    
    @Column(name = "KODE_MATKUL", nullable = false, length = 20)
    private String JadwalPK.kodeMatkul;
    
    public JadwalPK.new(String kodeKelas, String nip, String kodeMatkul) {
        super();
        this.kodeKelas = kodeKelas;
        this.nip = nip;
        this.kodeMatkul = kodeMatkul;
    }

    private JadwalPK.new() {
        super();
    }

    public String JadwalPK.getKodeKelas() {
        return kodeKelas;
    }
    
    public String JadwalPK.getNip() {
        return nip;
    }
    
    public String JadwalPK.getKodeMatkul() {
        return kodeMatkul;
    }
    
}

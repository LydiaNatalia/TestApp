// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.NilaiPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect NilaiPK_Roo_Identifier {
    
    declare @type: NilaiPK: @Embeddable;
    
    @Column(name = "NIM", nullable = false, length = 20)
    private String NilaiPK.nim;
    
    @Column(name = "KODE_MATKUL", nullable = false, length = 20)
    private String NilaiPK.kodeMatkul;
    
    public NilaiPK.new(String nim, String kodeMatkul) {
        super();
        this.nim = nim;
        this.kodeMatkul = kodeMatkul;
    }

    private NilaiPK.new() {
        super();
    }

    public String NilaiPK.getNim() {
        return nim;
    }
    
    public String NilaiPK.getKodeMatkul() {
        return kodeMatkul;
    }
    
}

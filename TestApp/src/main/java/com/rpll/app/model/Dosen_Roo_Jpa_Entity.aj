// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Dosen;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Dosen_Roo_Jpa_Entity {
    
    declare @type: Dosen: @Entity;
    
    declare @type: Dosen: @Table(name = "dosen");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "NIP", length = 20)
    private String Dosen.nip;
    
    public String Dosen.getNip() {
        return this.nip;
    }
    
    public void Dosen.setNip(String id) {
        this.nip = id;
    }
    
}

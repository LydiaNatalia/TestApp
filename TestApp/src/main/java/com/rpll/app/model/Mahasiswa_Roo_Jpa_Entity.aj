// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Mahasiswa;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Mahasiswa_Roo_Jpa_Entity {
    
    declare @type: Mahasiswa: @Entity;
    
    declare @type: Mahasiswa: @Table(name = "mahasiswa");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "NIM", length = 20)
    private String Mahasiswa.nim;
    
    public String Mahasiswa.getNim() {
        return this.nim;
    }
    
    public void Mahasiswa.setNim(String id) {
        this.nim = id;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.BadanHukum;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect BadanHukum_Roo_Jpa_Entity {
    
    declare @type: BadanHukum: @Entity;
    
    declare @type: BadanHukum: @Table(name = "badan_hukum");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "KODE_BHUKUM", length = 20)
    private String BadanHukum.kodeBhukum;
    
    public String BadanHukum.getKodeBhukum() {
        return this.kodeBhukum;
    }
    
    public void BadanHukum.setKodeBhukum(String id) {
        this.kodeBhukum = id;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Frs;
import com.rpll.app.model.FrsPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Frs_Roo_Jpa_Entity {
    
    declare @type: Frs: @Entity;
    
    declare @type: Frs: @Table(name = "frs");
    
    @EmbeddedId
    private FrsPK Frs.id;
    
    public FrsPK Frs.getId() {
        return this.id;
    }
    
    public void Frs.setId(FrsPK id) {
        this.id = id;
    }
    
}

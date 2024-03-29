// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Departemen;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Departemen_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Departemen.entityManager;
    
    public static final EntityManager Departemen.entityManager() {
        EntityManager em = new Departemen().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Departemen.countDepartemens() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Departemen o", Long.class).getSingleResult();
    }
    
    public static List<Departemen> Departemen.findAllDepartemens() {
        return entityManager().createQuery("SELECT o FROM Departemen o", Departemen.class).getResultList();
    }
    
    public static Departemen Departemen.findDepartemen(String kodeDepart) {
        if (kodeDepart == null || kodeDepart.length() == 0) return null;
        return entityManager().find(Departemen.class, kodeDepart);
    }
    
    public static List<Departemen> Departemen.findDepartemenEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Departemen o", Departemen.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Departemen.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Departemen.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Departemen attached = Departemen.findDepartemen(this.kodeDepart);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Departemen.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Departemen.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Departemen Departemen.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Departemen merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

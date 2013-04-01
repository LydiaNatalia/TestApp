// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.HakAkses;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect HakAkses_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager HakAkses.entityManager;
    
    public static final EntityManager HakAkses.entityManager() {
        EntityManager em = new HakAkses().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long HakAkses.countHakAkseses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM HakAkses o", Long.class).getSingleResult();
    }
    
    public static List<HakAkses> HakAkses.findAllHakAkseses() {
        return entityManager().createQuery("SELECT o FROM HakAkses o", HakAkses.class).getResultList();
    }
    
    public static HakAkses HakAkses.findHakAkses(String kodeAkses) {
        if (kodeAkses == null || kodeAkses.length() == 0) return null;
        return entityManager().find(HakAkses.class, kodeAkses);
    }
    
    public static List<HakAkses> HakAkses.findHakAksesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM HakAkses o", HakAkses.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void HakAkses.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void HakAkses.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            HakAkses attached = HakAkses.findHakAkses(this.kodeAkses);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void HakAkses.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void HakAkses.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public HakAkses HakAkses.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        HakAkses merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
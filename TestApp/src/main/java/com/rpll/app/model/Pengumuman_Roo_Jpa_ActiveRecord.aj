// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Pengumuman;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pengumuman_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pengumuman.entityManager;
    
    public static final EntityManager Pengumuman.entityManager() {
        EntityManager em = new Pengumuman().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pengumuman.countPengumumen() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pengumuman o", Long.class).getSingleResult();
    }
    
    public static List<Pengumuman> Pengumuman.findAllPengumumen() {
        return entityManager().createQuery("SELECT o FROM Pengumuman o", Pengumuman.class).getResultList();
    }
    
    public static Pengumuman Pengumuman.findPengumuman(String kodePengumuman) {
        if (kodePengumuman == null || kodePengumuman.length() == 0) return null;
        return entityManager().find(Pengumuman.class, kodePengumuman);
    }
    
    public static List<Pengumuman> Pengumuman.findPengumumanEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pengumuman o", Pengumuman.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pengumuman.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pengumuman.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pengumuman attached = Pengumuman.findPengumuman(this.kodePengumuman);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pengumuman.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pengumuman.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pengumuman Pengumuman.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pengumuman merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

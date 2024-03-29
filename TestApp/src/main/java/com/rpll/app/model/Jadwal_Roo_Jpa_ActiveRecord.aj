// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Jadwal;
import com.rpll.app.model.JadwalPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Jadwal_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Jadwal.entityManager;
    
    public static final EntityManager Jadwal.entityManager() {
        EntityManager em = new Jadwal().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Jadwal.countJadwals() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Jadwal o", Long.class).getSingleResult();
    }
    
    public static List<Jadwal> Jadwal.findAllJadwals() {
        return entityManager().createQuery("SELECT o FROM Jadwal o", Jadwal.class).getResultList();
    }
    
    public static Jadwal Jadwal.findJadwal(JadwalPK id) {
        if (id == null) return null;
        return entityManager().find(Jadwal.class, id);
    }
    
    public static List<Jadwal> Jadwal.findJadwalEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Jadwal o", Jadwal.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Jadwal.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Jadwal.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Jadwal attached = Jadwal.findJadwal(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Jadwal.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Jadwal.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Jadwal Jadwal.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Jadwal merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

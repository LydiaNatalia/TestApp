// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Pegawai;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pegawai_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pegawai.entityManager;
    
    public static final EntityManager Pegawai.entityManager() {
        EntityManager em = new Pegawai().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pegawai.countPegawais() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pegawai o", Long.class).getSingleResult();
    }
    
    public static List<Pegawai> Pegawai.findAllPegawais() {
        return entityManager().createQuery("SELECT o FROM Pegawai o", Pegawai.class).getResultList();
    }
    
    public static Pegawai Pegawai.findPegawai(String nip) {
        if (nip == null || nip.length() == 0) return null;
        return entityManager().find(Pegawai.class, nip);
    }
    
    public static List<Pegawai> Pegawai.findPegawaiEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pegawai o", Pegawai.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pegawai.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pegawai.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pegawai attached = Pegawai.findPegawai(this.nip);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pegawai.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pegawai.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pegawai Pegawai.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pegawai merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.BahanKuliah;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BahanKuliah_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager BahanKuliah.entityManager;
    
    public static final EntityManager BahanKuliah.entityManager() {
        EntityManager em = new BahanKuliah().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long BahanKuliah.countBahanKuliahs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM BahanKuliah o", Long.class).getSingleResult();
    }
    
    public static List<BahanKuliah> BahanKuliah.findAllBahanKuliahs() {
        return entityManager().createQuery("SELECT o FROM BahanKuliah o", BahanKuliah.class).getResultList();
    }
    
    public static BahanKuliah BahanKuliah.findBahanKuliah(String kodeBahan) {
        if (kodeBahan == null || kodeBahan.length() == 0) return null;
        return entityManager().find(BahanKuliah.class, kodeBahan);
    }
    
    public static List<BahanKuliah> BahanKuliah.findBahanKuliahEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM BahanKuliah o", BahanKuliah.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void BahanKuliah.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void BahanKuliah.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            BahanKuliah attached = BahanKuliah.findBahanKuliah(this.kodeBahan);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void BahanKuliah.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void BahanKuliah.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public BahanKuliah BahanKuliah.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BahanKuliah merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

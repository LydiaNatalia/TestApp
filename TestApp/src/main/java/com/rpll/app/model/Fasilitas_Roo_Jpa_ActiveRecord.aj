// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Fasilitas;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Fasilitas_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Fasilitas.entityManager;
    
    public static final EntityManager Fasilitas.entityManager() {
        EntityManager em = new Fasilitas().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Fasilitas.countFasilitases() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Fasilitas o", Long.class).getSingleResult();
    }
    
    public static List<Fasilitas> Fasilitas.findAllFasilitases() {
        return entityManager().createQuery("SELECT o FROM Fasilitas o", Fasilitas.class).getResultList();
    }
    
    public static Fasilitas Fasilitas.findFasilitas(String kodeFasilitas) {
        if (kodeFasilitas == null || kodeFasilitas.length() == 0) return null;
        return entityManager().find(Fasilitas.class, kodeFasilitas);
    }
    
    public static List<Fasilitas> Fasilitas.findFasilitasEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Fasilitas o", Fasilitas.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Fasilitas.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Fasilitas.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Fasilitas attached = Fasilitas.findFasilitas(this.kodeFasilitas);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Fasilitas.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Fasilitas.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Fasilitas Fasilitas.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Fasilitas merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Mahasiswa;
import com.rpll.app.model.MahasiswaDataOnDemand;
import com.rpll.app.model.MahasiswaIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MahasiswaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MahasiswaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MahasiswaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: MahasiswaIntegrationTest: @Transactional;
    
    @Autowired
    private MahasiswaDataOnDemand MahasiswaIntegrationTest.dod;
    
    @Test
    public void MahasiswaIntegrationTest.testCountMahasiswas() {
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", dod.getRandomMahasiswa());
        long count = Mahasiswa.countMahasiswas();
        Assert.assertTrue("Counter for 'Mahasiswa' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MahasiswaIntegrationTest.testFindMahasiswa() {
        Mahasiswa obj = dod.getRandomMahasiswa();
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", obj);
        String id = obj.getNim();
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to provide an identifier", id);
        obj = Mahasiswa.findMahasiswa(id);
        Assert.assertNotNull("Find method for 'Mahasiswa' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Mahasiswa' returned the incorrect identifier", id, obj.getNim());
    }
    
    @Test
    public void MahasiswaIntegrationTest.testFindAllMahasiswas() {
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", dod.getRandomMahasiswa());
        long count = Mahasiswa.countMahasiswas();
        Assert.assertTrue("Too expensive to perform a find all test for 'Mahasiswa', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Mahasiswa> result = Mahasiswa.findAllMahasiswas();
        Assert.assertNotNull("Find all method for 'Mahasiswa' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Mahasiswa' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MahasiswaIntegrationTest.testFindMahasiswaEntries() {
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", dod.getRandomMahasiswa());
        long count = Mahasiswa.countMahasiswas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Mahasiswa> result = Mahasiswa.findMahasiswaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Mahasiswa' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Mahasiswa' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MahasiswaIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", dod.getRandomMahasiswa());
        Mahasiswa obj = dod.getNewTransientMahasiswa(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Mahasiswa' identifier to be null", obj.getNim());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Mahasiswa' identifier to no longer be null", obj.getNim());
    }
    
    @Test
    public void MahasiswaIntegrationTest.testRemove() {
        Mahasiswa obj = dod.getRandomMahasiswa();
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to initialize correctly", obj);
        String id = obj.getNim();
        Assert.assertNotNull("Data on demand for 'Mahasiswa' failed to provide an identifier", id);
        obj = Mahasiswa.findMahasiswa(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Mahasiswa' with identifier '" + id + "'", Mahasiswa.findMahasiswa(id));
    }
    
}

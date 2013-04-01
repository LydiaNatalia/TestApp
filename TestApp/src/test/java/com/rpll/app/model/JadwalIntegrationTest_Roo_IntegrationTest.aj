// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Jadwal;
import com.rpll.app.model.JadwalDataOnDemand;
import com.rpll.app.model.JadwalIntegrationTest;
import com.rpll.app.model.JadwalPK;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect JadwalIntegrationTest_Roo_IntegrationTest {
    
    declare @type: JadwalIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: JadwalIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: JadwalIntegrationTest: @Transactional;
    
    @Autowired
    private JadwalDataOnDemand JadwalIntegrationTest.dod;
    
    @Test
    public void JadwalIntegrationTest.testCountJadwals() {
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", dod.getRandomJadwal());
        long count = Jadwal.countJadwals();
        Assert.assertTrue("Counter for 'Jadwal' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void JadwalIntegrationTest.testFindJadwal() {
        Jadwal obj = dod.getRandomJadwal();
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", obj);
        JadwalPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to provide an identifier", id);
        obj = Jadwal.findJadwal(id);
        Assert.assertNotNull("Find method for 'Jadwal' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Jadwal' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void JadwalIntegrationTest.testFindAllJadwals() {
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", dod.getRandomJadwal());
        long count = Jadwal.countJadwals();
        Assert.assertTrue("Too expensive to perform a find all test for 'Jadwal', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Jadwal> result = Jadwal.findAllJadwals();
        Assert.assertNotNull("Find all method for 'Jadwal' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Jadwal' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void JadwalIntegrationTest.testFindJadwalEntries() {
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", dod.getRandomJadwal());
        long count = Jadwal.countJadwals();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Jadwal> result = Jadwal.findJadwalEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Jadwal' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Jadwal' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void JadwalIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", dod.getRandomJadwal());
        Jadwal obj = dod.getNewTransientJadwal(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to provide a new transient entity", obj);
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Jadwal' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void JadwalIntegrationTest.testRemove() {
        Jadwal obj = dod.getRandomJadwal();
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to initialize correctly", obj);
        JadwalPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Jadwal' failed to provide an identifier", id);
        obj = Jadwal.findJadwal(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Jadwal' with identifier '" + id + "'", Jadwal.findJadwal(id));
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Biaya;
import com.rpll.app.model.BiayaDataOnDemand;
import com.rpll.app.model.BiayaIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BiayaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BiayaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BiayaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: BiayaIntegrationTest: @Transactional;
    
    @Autowired
    private BiayaDataOnDemand BiayaIntegrationTest.dod;
    
    @Test
    public void BiayaIntegrationTest.testCountBiayas() {
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", dod.getRandomBiaya());
        long count = Biaya.countBiayas();
        Assert.assertTrue("Counter for 'Biaya' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BiayaIntegrationTest.testFindBiaya() {
        Biaya obj = dod.getRandomBiaya();
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", obj);
        String id = obj.getKodeBiaya();
        Assert.assertNotNull("Data on demand for 'Biaya' failed to provide an identifier", id);
        obj = Biaya.findBiaya(id);
        Assert.assertNotNull("Find method for 'Biaya' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Biaya' returned the incorrect identifier", id, obj.getKodeBiaya());
    }
    
    @Test
    public void BiayaIntegrationTest.testFindAllBiayas() {
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", dod.getRandomBiaya());
        long count = Biaya.countBiayas();
        Assert.assertTrue("Too expensive to perform a find all test for 'Biaya', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Biaya> result = Biaya.findAllBiayas();
        Assert.assertNotNull("Find all method for 'Biaya' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Biaya' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BiayaIntegrationTest.testFindBiayaEntries() {
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", dod.getRandomBiaya());
        long count = Biaya.countBiayas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Biaya> result = Biaya.findBiayaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Biaya' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Biaya' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BiayaIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", dod.getRandomBiaya());
        Biaya obj = dod.getNewTransientBiaya(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Biaya' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Biaya' identifier to be null", obj.getKodeBiaya());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Biaya' identifier to no longer be null", obj.getKodeBiaya());
    }
    
    @Test
    public void BiayaIntegrationTest.testRemove() {
        Biaya obj = dod.getRandomBiaya();
        Assert.assertNotNull("Data on demand for 'Biaya' failed to initialize correctly", obj);
        String id = obj.getKodeBiaya();
        Assert.assertNotNull("Data on demand for 'Biaya' failed to provide an identifier", id);
        obj = Biaya.findBiaya(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Biaya' with identifier '" + id + "'", Biaya.findBiaya(id));
    }
    
}

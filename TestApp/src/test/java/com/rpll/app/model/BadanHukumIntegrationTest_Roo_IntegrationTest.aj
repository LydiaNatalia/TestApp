// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.BadanHukum;
import com.rpll.app.model.BadanHukumDataOnDemand;
import com.rpll.app.model.BadanHukumIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BadanHukumIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BadanHukumIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BadanHukumIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: BadanHukumIntegrationTest: @Transactional;
    
    @Autowired
    private BadanHukumDataOnDemand BadanHukumIntegrationTest.dod;
    
    @Test
    public void BadanHukumIntegrationTest.testCountBadanHukums() {
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", dod.getRandomBadanHukum());
        long count = BadanHukum.countBadanHukums();
        Assert.assertTrue("Counter for 'BadanHukum' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BadanHukumIntegrationTest.testFindBadanHukum() {
        BadanHukum obj = dod.getRandomBadanHukum();
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", obj);
        String id = obj.getKodeBhukum();
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to provide an identifier", id);
        obj = BadanHukum.findBadanHukum(id);
        Assert.assertNotNull("Find method for 'BadanHukum' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'BadanHukum' returned the incorrect identifier", id, obj.getKodeBhukum());
    }
    
    @Test
    public void BadanHukumIntegrationTest.testFindAllBadanHukums() {
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", dod.getRandomBadanHukum());
        long count = BadanHukum.countBadanHukums();
        Assert.assertTrue("Too expensive to perform a find all test for 'BadanHukum', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<BadanHukum> result = BadanHukum.findAllBadanHukums();
        Assert.assertNotNull("Find all method for 'BadanHukum' illegally returned null", result);
        Assert.assertTrue("Find all method for 'BadanHukum' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BadanHukumIntegrationTest.testFindBadanHukumEntries() {
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", dod.getRandomBadanHukum());
        long count = BadanHukum.countBadanHukums();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<BadanHukum> result = BadanHukum.findBadanHukumEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'BadanHukum' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'BadanHukum' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BadanHukumIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", dod.getRandomBadanHukum());
        BadanHukum obj = dod.getNewTransientBadanHukum(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'BadanHukum' identifier to be null", obj.getKodeBhukum());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'BadanHukum' identifier to no longer be null", obj.getKodeBhukum());
    }
    
    @Test
    public void BadanHukumIntegrationTest.testRemove() {
        BadanHukum obj = dod.getRandomBadanHukum();
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to initialize correctly", obj);
        String id = obj.getKodeBhukum();
        Assert.assertNotNull("Data on demand for 'BadanHukum' failed to provide an identifier", id);
        obj = BadanHukum.findBadanHukum(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'BadanHukum' with identifier '" + id + "'", BadanHukum.findBadanHukum(id));
    }
    
}
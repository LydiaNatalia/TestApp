// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Frs;
import com.rpll.app.model.FrsDataOnDemand;
import com.rpll.app.model.FrsIntegrationTest;
import com.rpll.app.model.FrsPK;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FrsIntegrationTest_Roo_IntegrationTest {
    
    declare @type: FrsIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: FrsIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: FrsIntegrationTest: @Transactional;
    
    @Autowired
    private FrsDataOnDemand FrsIntegrationTest.dod;
    
    @Test
    public void FrsIntegrationTest.testCountFrses() {
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", dod.getRandomFrs());
        long count = Frs.countFrses();
        Assert.assertTrue("Counter for 'Frs' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void FrsIntegrationTest.testFindFrs() {
        Frs obj = dod.getRandomFrs();
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", obj);
        FrsPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Frs' failed to provide an identifier", id);
        obj = Frs.findFrs(id);
        Assert.assertNotNull("Find method for 'Frs' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Frs' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void FrsIntegrationTest.testFindAllFrses() {
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", dod.getRandomFrs());
        long count = Frs.countFrses();
        Assert.assertTrue("Too expensive to perform a find all test for 'Frs', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Frs> result = Frs.findAllFrses();
        Assert.assertNotNull("Find all method for 'Frs' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Frs' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void FrsIntegrationTest.testFindFrsEntries() {
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", dod.getRandomFrs());
        long count = Frs.countFrses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Frs> result = Frs.findFrsEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Frs' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Frs' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void FrsIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", dod.getRandomFrs());
        Frs obj = dod.getNewTransientFrs(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Frs' failed to provide a new transient entity", obj);
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Frs' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void FrsIntegrationTest.testRemove() {
        Frs obj = dod.getRandomFrs();
        Assert.assertNotNull("Data on demand for 'Frs' failed to initialize correctly", obj);
        FrsPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Frs' failed to provide an identifier", id);
        obj = Frs.findFrs(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Frs' with identifier '" + id + "'", Frs.findFrs(id));
    }
    
}

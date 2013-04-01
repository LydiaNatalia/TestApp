// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Fakultas;
import com.rpll.app.model.FakultasDataOnDemand;
import com.rpll.app.model.FakultasIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FakultasIntegrationTest_Roo_IntegrationTest {
    
    declare @type: FakultasIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: FakultasIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: FakultasIntegrationTest: @Transactional;
    
    @Autowired
    private FakultasDataOnDemand FakultasIntegrationTest.dod;
    
    @Test
    public void FakultasIntegrationTest.testCountFakultases() {
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", dod.getRandomFakultas());
        long count = Fakultas.countFakultases();
        Assert.assertTrue("Counter for 'Fakultas' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void FakultasIntegrationTest.testFindFakultas() {
        Fakultas obj = dod.getRandomFakultas();
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", obj);
        String id = obj.getKodeFakultas();
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to provide an identifier", id);
        obj = Fakultas.findFakultas(id);
        Assert.assertNotNull("Find method for 'Fakultas' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Fakultas' returned the incorrect identifier", id, obj.getKodeFakultas());
    }
    
    @Test
    public void FakultasIntegrationTest.testFindAllFakultases() {
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", dod.getRandomFakultas());
        long count = Fakultas.countFakultases();
        Assert.assertTrue("Too expensive to perform a find all test for 'Fakultas', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Fakultas> result = Fakultas.findAllFakultases();
        Assert.assertNotNull("Find all method for 'Fakultas' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Fakultas' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void FakultasIntegrationTest.testFindFakultasEntries() {
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", dod.getRandomFakultas());
        long count = Fakultas.countFakultases();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Fakultas> result = Fakultas.findFakultasEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Fakultas' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Fakultas' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void FakultasIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", dod.getRandomFakultas());
        Fakultas obj = dod.getNewTransientFakultas(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Fakultas' identifier to be null", obj.getKodeFakultas());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Fakultas' identifier to no longer be null", obj.getKodeFakultas());
    }
    
    @Test
    public void FakultasIntegrationTest.testRemove() {
        Fakultas obj = dod.getRandomFakultas();
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to initialize correctly", obj);
        String id = obj.getKodeFakultas();
        Assert.assertNotNull("Data on demand for 'Fakultas' failed to provide an identifier", id);
        obj = Fakultas.findFakultas(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Fakultas' with identifier '" + id + "'", Fakultas.findFakultas(id));
    }
    
}
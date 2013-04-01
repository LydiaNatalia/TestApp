// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Fakultas;
import com.rpll.app.model.FakultasDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect FakultasDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FakultasDataOnDemand: @Component;
    
    private Random FakultasDataOnDemand.rnd = new SecureRandom();
    
    private List<Fakultas> FakultasDataOnDemand.data;
    
    public Fakultas FakultasDataOnDemand.getNewTransientFakultas(int index) {
        Fakultas obj = new Fakultas();
        setNamaFakultas(obj, index);
        return obj;
    }
    
    public void FakultasDataOnDemand.setNamaFakultas(Fakultas obj, int index) {
        String namaFakultas = "namaFakultas_" + index;
        if (namaFakultas.length() > 40) {
            namaFakultas = namaFakultas.substring(0, 40);
        }
        obj.setNamaFakultas(namaFakultas);
    }
    
    public Fakultas FakultasDataOnDemand.getSpecificFakultas(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Fakultas obj = data.get(index);
        String id = obj.getKodeFakultas();
        return Fakultas.findFakultas(id);
    }
    
    public Fakultas FakultasDataOnDemand.getRandomFakultas() {
        init();
        Fakultas obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getKodeFakultas();
        return Fakultas.findFakultas(id);
    }
    
    public boolean FakultasDataOnDemand.modifyFakultas(Fakultas obj) {
        return false;
    }
    
    public void FakultasDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Fakultas.findFakultasEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Fakultas' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Fakultas>();
        for (int i = 0; i < 10; i++) {
            Fakultas obj = getNewTransientFakultas(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}

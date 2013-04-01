// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.DepartemenDataOnDemand;
import com.rpll.app.model.MataKuliah;
import com.rpll.app.model.MataKuliahDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect MataKuliahDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MataKuliahDataOnDemand: @Component;
    
    private Random MataKuliahDataOnDemand.rnd = new SecureRandom();
    
    private List<MataKuliah> MataKuliahDataOnDemand.data;
    
    @Autowired
    private DepartemenDataOnDemand MataKuliahDataOnDemand.departemenDataOnDemand;
    
    public MataKuliah MataKuliahDataOnDemand.getNewTransientMataKuliah(int index) {
        MataKuliah obj = new MataKuliah();
        setBobot1(obj, index);
        setBobot2(obj, index);
        setBobot3(obj, index);
        setBobot4(obj, index);
        setBobot5(obj, index);
        setBobotSks(obj, index);
        setKurikulum(obj, index);
        setNamaMatkul(obj, index);
        setPeriodeSemester(obj, index);
        setPrasyarat(obj, index);
        setUas(obj, index);
        return obj;
    }
    
    public void MataKuliahDataOnDemand.setBobot1(MataKuliah obj, int index) {
        Integer bobot1 = new Integer(index);
        obj.setBobot1(bobot1);
    }
    
    public void MataKuliahDataOnDemand.setBobot2(MataKuliah obj, int index) {
        Integer bobot2 = new Integer(index);
        obj.setBobot2(bobot2);
    }
    
    public void MataKuliahDataOnDemand.setBobot3(MataKuliah obj, int index) {
        Integer bobot3 = new Integer(index);
        obj.setBobot3(bobot3);
    }
    
    public void MataKuliahDataOnDemand.setBobot4(MataKuliah obj, int index) {
        Integer bobot4 = new Integer(index);
        obj.setBobot4(bobot4);
    }
    
    public void MataKuliahDataOnDemand.setBobot5(MataKuliah obj, int index) {
        Integer bobot5 = new Integer(index);
        obj.setBobot5(bobot5);
    }
    
    public void MataKuliahDataOnDemand.setBobotSks(MataKuliah obj, int index) {
        Integer bobotSks = new Integer(index);
        obj.setBobotSks(bobotSks);
    }
    
    public void MataKuliahDataOnDemand.setKurikulum(MataKuliah obj, int index) {
        String kurikulum = "kurikulum_" + index;
        if (kurikulum.length() > 40) {
            kurikulum = kurikulum.substring(0, 40);
        }
        obj.setKurikulum(kurikulum);
    }
    
    public void MataKuliahDataOnDemand.setNamaMatkul(MataKuliah obj, int index) {
        String namaMatkul = "namaMatkul_" + index;
        if (namaMatkul.length() > 20) {
            namaMatkul = namaMatkul.substring(0, 20);
        }
        obj.setNamaMatkul(namaMatkul);
    }
    
    public void MataKuliahDataOnDemand.setPeriodeSemester(MataKuliah obj, int index) {
        String periodeSemester = "periodeSemester_" + index;
        if (periodeSemester.length() > 40) {
            periodeSemester = periodeSemester.substring(0, 40);
        }
        obj.setPeriodeSemester(periodeSemester);
    }
    
    public void MataKuliahDataOnDemand.setPrasyarat(MataKuliah obj, int index) {
        String prasyarat = "prasyarat_" + index;
        if (prasyarat.length() > 20) {
            prasyarat = prasyarat.substring(0, 20);
        }
        obj.setPrasyarat(prasyarat);
    }
    
    public void MataKuliahDataOnDemand.setUas(MataKuliah obj, int index) {
        Integer uas = new Integer(index);
        obj.setUas(uas);
    }
    
    public MataKuliah MataKuliahDataOnDemand.getSpecificMataKuliah(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        MataKuliah obj = data.get(index);
        String id = obj.getKodeMatkul();
        return MataKuliah.findMataKuliah(id);
    }
    
    public MataKuliah MataKuliahDataOnDemand.getRandomMataKuliah() {
        init();
        MataKuliah obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getKodeMatkul();
        return MataKuliah.findMataKuliah(id);
    }
    
    public boolean MataKuliahDataOnDemand.modifyMataKuliah(MataKuliah obj) {
        return false;
    }
    
    public void MataKuliahDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = MataKuliah.findMataKuliahEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'MataKuliah' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<MataKuliah>();
        for (int i = 0; i < 10; i++) {
            MataKuliah obj = getNewTransientMataKuliah(i);
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

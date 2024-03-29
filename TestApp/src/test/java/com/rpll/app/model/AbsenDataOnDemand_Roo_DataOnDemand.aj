// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.Absen;
import com.rpll.app.model.AbsenDataOnDemand;
import com.rpll.app.model.AbsenPK;
import com.rpll.app.model.KelasDataOnDemand;
import com.rpll.app.model.MahasiswaDataOnDemand;
import com.rpll.app.model.MataKuliahDataOnDemand;
import com.rpll.app.model.PegawaiDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AbsenDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AbsenDataOnDemand: @Component;
    
    private Random AbsenDataOnDemand.rnd = new SecureRandom();
    
    private List<Absen> AbsenDataOnDemand.data;
    
    @Autowired
    private KelasDataOnDemand AbsenDataOnDemand.kelasDataOnDemand;
    
    @Autowired
    private MataKuliahDataOnDemand AbsenDataOnDemand.mataKuliahDataOnDemand;
    
    @Autowired
    private MahasiswaDataOnDemand AbsenDataOnDemand.mahasiswaDataOnDemand;
    
    @Autowired
    private PegawaiDataOnDemand AbsenDataOnDemand.pegawaiDataOnDemand;
    
    public Absen AbsenDataOnDemand.getNewTransientAbsen(int index) {
        Absen obj = new Absen();
        setEmbeddedIdClass(obj, index);
        return obj;
    }
    
    public void AbsenDataOnDemand.setEmbeddedIdClass(Absen obj, int index) {
        String nim = "nim_" + index;
        if (nim.length() > 20) {
            nim = new Random().nextInt(10) + nim.substring(1, 20);
        }
        String kodeKelas = "kodeKelas_" + index;
        if (kodeKelas.length() > 20) {
            kodeKelas = new Random().nextInt(10) + kodeKelas.substring(1, 20);
        }
        String nip = "nip_" + index;
        if (nip.length() > 20) {
            nip = new Random().nextInt(10) + nip.substring(1, 20);
        }
        String kodeMatkul = "kodeMatkul_" + index;
        if (kodeMatkul.length() > 20) {
            kodeMatkul = new Random().nextInt(10) + kodeMatkul.substring(1, 20);
        }
        String statusKehadiran = "statusKehadiran_" + index;
        if (statusKehadiran.length() > 40) {
            statusKehadiran = new Random().nextInt(10) + statusKehadiran.substring(1, 40);
        }
        
        AbsenPK embeddedIdClass = new AbsenPK(nim, kodeKelas, nip, kodeMatkul, statusKehadiran);
        obj.setId(embeddedIdClass);
    }
    
    public Absen AbsenDataOnDemand.getSpecificAbsen(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Absen obj = data.get(index);
        AbsenPK id = obj.getId();
        return Absen.findAbsen(id);
    }
    
    public Absen AbsenDataOnDemand.getRandomAbsen() {
        init();
        Absen obj = data.get(rnd.nextInt(data.size()));
        AbsenPK id = obj.getId();
        return Absen.findAbsen(id);
    }
    
    public boolean AbsenDataOnDemand.modifyAbsen(Absen obj) {
        return false;
    }
    
    public void AbsenDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Absen.findAbsenEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Absen' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Absen>();
        for (int i = 0; i < 10; i++) {
            Absen obj = getNewTransientAbsen(i);
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

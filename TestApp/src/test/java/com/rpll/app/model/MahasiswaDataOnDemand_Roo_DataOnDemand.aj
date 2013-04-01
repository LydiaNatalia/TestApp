// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.model;

import com.rpll.app.model.BiayaDataOnDemand;
import com.rpll.app.model.DepartemenDataOnDemand;
import com.rpll.app.model.Mahasiswa;
import com.rpll.app.model.MahasiswaDataOnDemand;
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

privileged aspect MahasiswaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MahasiswaDataOnDemand: @Component;
    
    private Random MahasiswaDataOnDemand.rnd = new SecureRandom();
    
    private List<Mahasiswa> MahasiswaDataOnDemand.data;
    
    @Autowired
    private BiayaDataOnDemand MahasiswaDataOnDemand.biayaDataOnDemand;
    
    @Autowired
    private DepartemenDataOnDemand MahasiswaDataOnDemand.departemenDataOnDemand;
    
    @Autowired
    private PegawaiDataOnDemand MahasiswaDataOnDemand.pegawaiDataOnDemand;
    
    public Mahasiswa MahasiswaDataOnDemand.getNewTransientMahasiswa(int index) {
        Mahasiswa obj = new Mahasiswa();
        setAlamatMhs(obj, index);
        setIpk(obj, index);
        setJenisKelamin(obj, index);
        setNamaMhs(obj, index);
        setPassMhs(obj, index);
        setStatusMhs(obj, index);
        setTeleponMhs(obj, index);
        return obj;
    }
    
    public void MahasiswaDataOnDemand.setAlamatMhs(Mahasiswa obj, int index) {
        String alamatMhs = "alamatMhs_" + index;
        if (alamatMhs.length() > 40) {
            alamatMhs = alamatMhs.substring(0, 40);
        }
        obj.setAlamatMhs(alamatMhs);
    }
    
    public void MahasiswaDataOnDemand.setIpk(Mahasiswa obj, int index) {
        Integer ipk = new Integer(index);
        obj.setIpk(ipk);
    }
    
    public void MahasiswaDataOnDemand.setJenisKelamin(Mahasiswa obj, int index) {
        String jenisKelamin = "jenisKelamin_" + index;
        if (jenisKelamin.length() > 20) {
            jenisKelamin = jenisKelamin.substring(0, 20);
        }
        obj.setJenisKelamin(jenisKelamin);
    }
    
    public void MahasiswaDataOnDemand.setNamaMhs(Mahasiswa obj, int index) {
        String namaMhs = "namaMhs_" + index;
        if (namaMhs.length() > 40) {
            namaMhs = namaMhs.substring(0, 40);
        }
        obj.setNamaMhs(namaMhs);
    }
    
    public void MahasiswaDataOnDemand.setPassMhs(Mahasiswa obj, int index) {
        String passMhs = "passMhs_" + index;
        if (passMhs.length() > 20) {
            passMhs = passMhs.substring(0, 20);
        }
        obj.setPassMhs(passMhs);
    }
    
    public void MahasiswaDataOnDemand.setStatusMhs(Mahasiswa obj, int index) {
        String statusMhs = "statusMhs_" + index;
        if (statusMhs.length() > 20) {
            statusMhs = statusMhs.substring(0, 20);
        }
        obj.setStatusMhs(statusMhs);
    }
    
    public void MahasiswaDataOnDemand.setTeleponMhs(Mahasiswa obj, int index) {
        String teleponMhs = "teleponMhs_" + index;
        if (teleponMhs.length() > 20) {
            teleponMhs = teleponMhs.substring(0, 20);
        }
        obj.setTeleponMhs(teleponMhs);
    }
    
    public Mahasiswa MahasiswaDataOnDemand.getSpecificMahasiswa(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Mahasiswa obj = data.get(index);
        String id = obj.getNim();
        return Mahasiswa.findMahasiswa(id);
    }
    
    public Mahasiswa MahasiswaDataOnDemand.getRandomMahasiswa() {
        init();
        Mahasiswa obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getNim();
        return Mahasiswa.findMahasiswa(id);
    }
    
    public boolean MahasiswaDataOnDemand.modifyMahasiswa(Mahasiswa obj) {
        return false;
    }
    
    public void MahasiswaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Mahasiswa.findMahasiswaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Mahasiswa' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Mahasiswa>();
        for (int i = 0; i < 10; i++) {
            Mahasiswa obj = getNewTransientMahasiswa(i);
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
package com.rpll.app.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = TanggungJawabPK.class, versionField = "", table = "tanggung_jawab")
@RooDbManaged(automaticallyDelete = true)
public class TanggungJawab {
}

package com.rpll.app.web;

import com.rpll.app.model.Pegawai;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pegawais")
@Controller
@RooWebScaffold(path = "pegawais", formBackingObject = Pegawai.class)
public class PegawaiController {
}

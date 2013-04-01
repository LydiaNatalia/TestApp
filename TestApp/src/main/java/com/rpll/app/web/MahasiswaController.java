package com.rpll.app.web;

import com.rpll.app.model.Mahasiswa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mahasiswas")
@Controller
@RooWebScaffold(path = "mahasiswas", formBackingObject = Mahasiswa.class)
public class MahasiswaController {
}

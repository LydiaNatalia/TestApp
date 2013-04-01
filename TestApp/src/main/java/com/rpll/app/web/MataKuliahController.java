package com.rpll.app.web;

import com.rpll.app.model.MataKuliah;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/matakuliahs")
@Controller
@RooWebScaffold(path = "matakuliahs", formBackingObject = MataKuliah.class)
public class MataKuliahController {
}

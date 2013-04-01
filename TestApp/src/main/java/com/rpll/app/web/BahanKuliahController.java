package com.rpll.app.web;

import com.rpll.app.model.BahanKuliah;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bahankuliahs")
@Controller
@RooWebScaffold(path = "bahankuliahs", formBackingObject = BahanKuliah.class)
public class BahanKuliahController {
}

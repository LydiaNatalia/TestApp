package com.rpll.app.web;

import com.rpll.app.model.Kelas;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/kelases")
@Controller
@RooWebScaffold(path = "kelases", formBackingObject = Kelas.class)
public class KelasController {
}

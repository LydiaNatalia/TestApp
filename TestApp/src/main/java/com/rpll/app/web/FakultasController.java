package com.rpll.app.web;

import com.rpll.app.model.Fakultas;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/fakultases")
@Controller
@RooWebScaffold(path = "fakultases", formBackingObject = Fakultas.class)
public class FakultasController {
}

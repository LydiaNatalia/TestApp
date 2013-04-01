package com.rpll.app.web;

import com.rpll.app.model.Fasilitas;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/fasilitases")
@Controller
@RooWebScaffold(path = "fasilitases", formBackingObject = Fasilitas.class)
public class FasilitasController {
}

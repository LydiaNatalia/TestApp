package com.rpll.app.web;

import com.rpll.app.model.Biaya;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/biayas")
@Controller
@RooWebScaffold(path = "biayas", formBackingObject = Biaya.class)
public class BiayaController {
}

package com.rpll.app.web;

import com.rpll.app.model.HakAkses;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/hakakseses")
@Controller
@RooWebScaffold(path = "hakakseses", formBackingObject = HakAkses.class)
public class HakAksesController {
}

package com.rpll.app.web;

import com.rpll.app.model.Absen;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/absens")
@Controller
@RooWebScaffold(path = "absens", formBackingObject = Absen.class)
public class AbsenController {
}

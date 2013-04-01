package com.rpll.app.web;

import com.rpll.app.model.Periode;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/periodes")
@Controller
@RooWebScaffold(path = "periodes", formBackingObject = Periode.class)
public class PeriodeController {
}

package com.rpll.app.web;

import com.rpll.app.model.KritikSaran;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/kritiksarans")
@Controller
@RooWebScaffold(path = "kritiksarans", formBackingObject = KritikSaran.class)
public class KritikSaranController {
}

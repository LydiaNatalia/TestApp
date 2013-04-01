package com.rpll.app.web;

import com.rpll.app.model.Frs;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/frses")
@Controller
@RooWebScaffold(path = "frses", formBackingObject = Frs.class)
public class FrsController {
}

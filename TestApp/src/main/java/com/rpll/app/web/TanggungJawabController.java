package com.rpll.app.web;

import com.rpll.app.model.TanggungJawab;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tanggungjawabs")
@Controller
@RooWebScaffold(path = "tanggungjawabs", formBackingObject = TanggungJawab.class)
public class TanggungJawabController {
}

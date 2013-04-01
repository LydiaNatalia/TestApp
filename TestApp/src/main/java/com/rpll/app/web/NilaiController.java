package com.rpll.app.web;

import com.rpll.app.model.Nilai;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/nilais")
@Controller
@RooWebScaffold(path = "nilais", formBackingObject = Nilai.class)
public class NilaiController {
}

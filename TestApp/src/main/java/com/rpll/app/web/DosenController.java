package com.rpll.app.web;

import com.rpll.app.model.Dosen;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dosens")
@Controller
@RooWebScaffold(path = "dosens", formBackingObject = Dosen.class)
public class DosenController {
}

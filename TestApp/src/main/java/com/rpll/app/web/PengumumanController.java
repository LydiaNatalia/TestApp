package com.rpll.app.web;

import com.rpll.app.model.Pengumuman;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pengumumen")
@Controller
@RooWebScaffold(path = "pengumumen", formBackingObject = Pengumuman.class)
public class PengumumanController {
}

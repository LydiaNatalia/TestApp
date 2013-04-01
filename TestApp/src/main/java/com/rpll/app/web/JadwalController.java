package com.rpll.app.web;

import com.rpll.app.model.Jadwal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jadwals")
@Controller
@RooWebScaffold(path = "jadwals", formBackingObject = Jadwal.class)
public class JadwalController {
}

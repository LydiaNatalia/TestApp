package com.rpll.app.web;

import com.rpll.app.model.Departemen;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/departemens")
@Controller
@RooWebScaffold(path = "departemens", formBackingObject = Departemen.class)
public class DepartemenController {
}

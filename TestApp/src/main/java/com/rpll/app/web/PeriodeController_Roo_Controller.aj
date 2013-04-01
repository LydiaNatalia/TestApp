// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.web;

import com.rpll.app.model.Departemen;
import com.rpll.app.model.Periode;
import com.rpll.app.web.PeriodeController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PeriodeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PeriodeController.create(@Valid Periode periode, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, periode);
            return "periodes/create";
        }
        uiModel.asMap().clear();
        periode.persist();
        return "redirect:/periodes/" + encodeUrlPathSegment(periode.getKodePeriode().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PeriodeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Periode());
        return "periodes/create";
    }
    
    @RequestMapping(value = "/{kodePeriode}", produces = "text/html")
    public String PeriodeController.show(@PathVariable("kodePeriode") String kodePeriode, Model uiModel) {
        uiModel.addAttribute("periode", Periode.findPeriode(kodePeriode));
        uiModel.addAttribute("itemId", kodePeriode);
        return "periodes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PeriodeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("periodes", Periode.findPeriodeEntries(firstResult, sizeNo));
            float nrOfPages = (float) Periode.countPeriodes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("periodes", Periode.findAllPeriodes());
        }
        return "periodes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PeriodeController.update(@Valid Periode periode, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, periode);
            return "periodes/update";
        }
        uiModel.asMap().clear();
        periode.merge();
        return "redirect:/periodes/" + encodeUrlPathSegment(periode.getKodePeriode().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{kodePeriode}", params = "form", produces = "text/html")
    public String PeriodeController.updateForm(@PathVariable("kodePeriode") String kodePeriode, Model uiModel) {
        populateEditForm(uiModel, Periode.findPeriode(kodePeriode));
        return "periodes/update";
    }
    
    @RequestMapping(value = "/{kodePeriode}", method = RequestMethod.DELETE, produces = "text/html")
    public String PeriodeController.delete(@PathVariable("kodePeriode") String kodePeriode, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Periode periode = Periode.findPeriode(kodePeriode);
        periode.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/periodes";
    }
    
    void PeriodeController.populateEditForm(Model uiModel, Periode periode) {
        uiModel.addAttribute("periode", periode);
        uiModel.addAttribute("departemens", Departemen.findAllDepartemens());
    }
    
    String PeriodeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}

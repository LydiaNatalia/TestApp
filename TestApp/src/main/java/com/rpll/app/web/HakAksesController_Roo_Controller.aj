// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.web;

import com.rpll.app.model.HakAkses;
import com.rpll.app.web.HakAksesController;
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

privileged aspect HakAksesController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String HakAksesController.create(@Valid HakAkses hakAkses, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hakAkses);
            return "hakakseses/create";
        }
        uiModel.asMap().clear();
        hakAkses.persist();
        return "redirect:/hakakseses/" + encodeUrlPathSegment(hakAkses.getKodeAkses().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String HakAksesController.createForm(Model uiModel) {
        populateEditForm(uiModel, new HakAkses());
        return "hakakseses/create";
    }
    
    @RequestMapping(value = "/{kodeAkses}", produces = "text/html")
    public String HakAksesController.show(@PathVariable("kodeAkses") String kodeAkses, Model uiModel) {
        uiModel.addAttribute("hakakses", HakAkses.findHakAkses(kodeAkses));
        uiModel.addAttribute("itemId", kodeAkses);
        return "hakakseses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String HakAksesController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("hakakseses", HakAkses.findHakAksesEntries(firstResult, sizeNo));
            float nrOfPages = (float) HakAkses.countHakAkseses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("hakakseses", HakAkses.findAllHakAkseses());
        }
        return "hakakseses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String HakAksesController.update(@Valid HakAkses hakAkses, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hakAkses);
            return "hakakseses/update";
        }
        uiModel.asMap().clear();
        hakAkses.merge();
        return "redirect:/hakakseses/" + encodeUrlPathSegment(hakAkses.getKodeAkses().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{kodeAkses}", params = "form", produces = "text/html")
    public String HakAksesController.updateForm(@PathVariable("kodeAkses") String kodeAkses, Model uiModel) {
        populateEditForm(uiModel, HakAkses.findHakAkses(kodeAkses));
        return "hakakseses/update";
    }
    
    @RequestMapping(value = "/{kodeAkses}", method = RequestMethod.DELETE, produces = "text/html")
    public String HakAksesController.delete(@PathVariable("kodeAkses") String kodeAkses, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        HakAkses hakAkses = HakAkses.findHakAkses(kodeAkses);
        hakAkses.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/hakakseses";
    }
    
    void HakAksesController.populateEditForm(Model uiModel, HakAkses hakAkses) {
        uiModel.addAttribute("hakAkses", hakAkses);
    }
    
    String HakAksesController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
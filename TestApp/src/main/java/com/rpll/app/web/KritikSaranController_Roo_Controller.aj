// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.web;

import com.rpll.app.model.KritikSaran;
import com.rpll.app.model.Mahasiswa;
import com.rpll.app.web.KritikSaranController;
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

privileged aspect KritikSaranController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String KritikSaranController.create(@Valid KritikSaran kritikSaran, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kritikSaran);
            return "kritiksarans/create";
        }
        uiModel.asMap().clear();
        kritikSaran.persist();
        return "redirect:/kritiksarans/" + encodeUrlPathSegment(kritikSaran.getKodeKritik().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String KritikSaranController.createForm(Model uiModel) {
        populateEditForm(uiModel, new KritikSaran());
        return "kritiksarans/create";
    }
    
    @RequestMapping(value = "/{kodeKritik}", produces = "text/html")
    public String KritikSaranController.show(@PathVariable("kodeKritik") String kodeKritik, Model uiModel) {
        uiModel.addAttribute("kritiksaran", KritikSaran.findKritikSaran(kodeKritik));
        uiModel.addAttribute("itemId", kodeKritik);
        return "kritiksarans/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String KritikSaranController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("kritiksarans", KritikSaran.findKritikSaranEntries(firstResult, sizeNo));
            float nrOfPages = (float) KritikSaran.countKritikSarans() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kritiksarans", KritikSaran.findAllKritikSarans());
        }
        return "kritiksarans/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String KritikSaranController.update(@Valid KritikSaran kritikSaran, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kritikSaran);
            return "kritiksarans/update";
        }
        uiModel.asMap().clear();
        kritikSaran.merge();
        return "redirect:/kritiksarans/" + encodeUrlPathSegment(kritikSaran.getKodeKritik().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{kodeKritik}", params = "form", produces = "text/html")
    public String KritikSaranController.updateForm(@PathVariable("kodeKritik") String kodeKritik, Model uiModel) {
        populateEditForm(uiModel, KritikSaran.findKritikSaran(kodeKritik));
        return "kritiksarans/update";
    }
    
    @RequestMapping(value = "/{kodeKritik}", method = RequestMethod.DELETE, produces = "text/html")
    public String KritikSaranController.delete(@PathVariable("kodeKritik") String kodeKritik, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        KritikSaran kritikSaran = KritikSaran.findKritikSaran(kodeKritik);
        kritikSaran.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kritiksarans";
    }
    
    void KritikSaranController.populateEditForm(Model uiModel, KritikSaran kritikSaran) {
        uiModel.addAttribute("kritikSaran", kritikSaran);
        uiModel.addAttribute("mahasiswas", Mahasiswa.findAllMahasiswas());
    }
    
    String KritikSaranController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rpll.app.web;

import com.rpll.app.model.Absen;
import com.rpll.app.model.Jadwal;
import com.rpll.app.model.Kelas;
import com.rpll.app.web.KelasController;
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

privileged aspect KelasController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String KelasController.create(@Valid Kelas kelas, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kelas);
            return "kelases/create";
        }
        uiModel.asMap().clear();
        kelas.persist();
        return "redirect:/kelases/" + encodeUrlPathSegment(kelas.getKodeKelas().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String KelasController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Kelas());
        return "kelases/create";
    }
    
    @RequestMapping(value = "/{kodeKelas}", produces = "text/html")
    public String KelasController.show(@PathVariable("kodeKelas") String kodeKelas, Model uiModel) {
        uiModel.addAttribute("kelas", Kelas.findKelas(kodeKelas));
        uiModel.addAttribute("itemId", kodeKelas);
        return "kelases/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String KelasController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("kelases", Kelas.findKelasEntries(firstResult, sizeNo));
            float nrOfPages = (float) Kelas.countKelases() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kelases", Kelas.findAllKelases());
        }
        return "kelases/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String KelasController.update(@Valid Kelas kelas, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kelas);
            return "kelases/update";
        }
        uiModel.asMap().clear();
        kelas.merge();
        return "redirect:/kelases/" + encodeUrlPathSegment(kelas.getKodeKelas().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{kodeKelas}", params = "form", produces = "text/html")
    public String KelasController.updateForm(@PathVariable("kodeKelas") String kodeKelas, Model uiModel) {
        populateEditForm(uiModel, Kelas.findKelas(kodeKelas));
        return "kelases/update";
    }
    
    @RequestMapping(value = "/{kodeKelas}", method = RequestMethod.DELETE, produces = "text/html")
    public String KelasController.delete(@PathVariable("kodeKelas") String kodeKelas, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Kelas kelas = Kelas.findKelas(kodeKelas);
        kelas.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kelases";
    }
    
    void KelasController.populateEditForm(Model uiModel, Kelas kelas) {
        uiModel.addAttribute("kelas", kelas);
        uiModel.addAttribute("absens", Absen.findAllAbsens());
        uiModel.addAttribute("jadwals", Jadwal.findAllJadwals());
    }
    
    String KelasController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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

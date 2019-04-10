package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.Surrounding;
import com.view.batdongsanfrontend.service.SuroundingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admin/")
public class SuroudingController {

    @Autowired
    SuroundingService suroundingService;

    @RequestMapping(value = "surrounding", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap) {
        List<Surrounding> listSurrounding = suroundingService.getAllObject();
        modelMap.addAttribute("listSurrounding", listSurrounding);
        return "admin/surrounding/index";
    }

    @RequestMapping(value = "surrounding/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editProduct(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objSurrounding") Surrounding objSurrounding, RedirectAttributes ra) {
        try {
            if (suroundingService.update(objSurrounding)) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/surrounding/";
    }

    @RequestMapping(value = "surrounding/add", method = RequestMethod.POST, produces = "application/json")
    public String createProductType(ModelMap modelMap, @ModelAttribute("objSurrounding") Surrounding objSurrounding, RedirectAttributes ra) {
        try {
            if (suroundingService.create(objSurrounding) != null) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/surrounding/";
    }

}

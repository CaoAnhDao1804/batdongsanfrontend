package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.Utilities;
import com.view.batdongsanfrontend.service.UtilitiesService;
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
public class UtilitiesController {

    @Autowired
    UtilitiesService utilitiesService;

    @RequestMapping(value = "utilities", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap) {
        List<Utilities> listUtilities = utilitiesService.getAllObject();
        modelMap.addAttribute("listUtilities", listUtilities);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/utilities/index";
    }

    @RequestMapping(value = "utilities/{id}", method = RequestMethod.POST, produces = "application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objUtilities") Utilities objUtilities, RedirectAttributes ra) {
        try {
            if (utilitiesService.update(objUtilities)) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/utilities";
    }

    @RequestMapping(value = "utilities/add", method = RequestMethod.POST, produces = "application/json")
    public String create(ModelMap modelMap, @ModelAttribute("objUtilities") Utilities objUtilities, RedirectAttributes ra) {
        try {
            if (utilitiesService.create(objUtilities) != null) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/utilities";
    }
}

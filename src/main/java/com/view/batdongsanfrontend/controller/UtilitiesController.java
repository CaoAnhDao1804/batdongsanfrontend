package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.model.Utilities;
import com.view.batdongsanfrontend.service.UtilitiesService;
import com.view.batdongsanfrontend.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class UtilitiesController {

    @Autowired
    UtilitiesService utilitiesService;

    @RequestMapping(value = "utilities", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            return "redirect:/login";
        }
        if (loggedUser.getIdRole() == 3) {
            return "redirect:/";
        }

        if (loggedUser.getIdRole() == 2) {
            return "redirect:/mod/post";
        }
        List<Utilities> listUtilities = utilitiesService.getAllObject();
        modelMap.addAttribute("listUtilities", listUtilities);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/utilities/index";
    }

    @RequestMapping(value = "utilities/{id}", method = RequestMethod.POST, produces = "application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objUtilities") Utilities objUtilities, RedirectAttributes ra) {
        try {
            if (utilitiesService.update(objUtilities)) {
                ra.addFlashAttribute("success", Constants.SUCCESS_EDIT);
            } else {
                ra.addFlashAttribute("failed", Constants.FAILED_EDIT);

            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", Constants.EXIST_NAME);
            return "redirect:/admin/utilities";
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/utilities";
    }

    @RequestMapping(value = "utilities/add", method = RequestMethod.POST, produces = "application/json")
    public String create(ModelMap modelMap, @ModelAttribute("objUtilities") Utilities objUtilities, RedirectAttributes ra) {
        try {
            if (utilitiesService.create(objUtilities) != null) {
                ra.addFlashAttribute("success", Constants.SUCCESS_ADD);
            } else {
                ra.addFlashAttribute("failed", Constants.FAILED_ADD);

            }
        }
        catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", Constants.EXIST_NAME);
            return "redirect:/admin/utilities";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/utilities";
    }
}

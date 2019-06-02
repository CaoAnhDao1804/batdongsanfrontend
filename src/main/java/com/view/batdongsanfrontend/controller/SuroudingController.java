package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.Surrounding;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.SuroundingService;
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
public class SuroudingController {

    @Autowired
    SuroundingService suroundingService;

    @RequestMapping(value = "surrounding", method = RequestMethod.GET, produces = "application/json")
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
        List<Surrounding> listSurrounding = suroundingService.getAllObject();
        modelMap.addAttribute("listSurrounding", listSurrounding);
        return "admin/surrounding/index";
    }

    @RequestMapping(value = "surrounding/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editSurounding(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objSurrounding") Surrounding objSurrounding, RedirectAttributes ra) {
        try {
            if (suroundingService.update(objSurrounding)) {
                ra.addFlashAttribute("success", "Chỉnh sửa thành công!");
            } else {
                ra.addFlashAttribute("failed", "Chỉnh sửa không thành công, vui lòng thử lại!");
            }
        } catch (ServiceBadRequestException e){
            ra.addFlashAttribute("failed", "Loại môi trường xung quanh này đã tồn tại!");
            return "redirect:/admin/surrounding/";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/surrounding/";
    }

    @RequestMapping(value = "surrounding/add", method = RequestMethod.POST, produces = "application/json")
    public String createSurrounding(ModelMap modelMap, @ModelAttribute("objSurrounding") Surrounding objSurrounding, RedirectAttributes ra) {
        try {
            if (suroundingService.create(objSurrounding) != null) {
                ra.addFlashAttribute("success", "Thêm mới môi trường xung quanh thành công!");
            } else {
                ra.addFlashAttribute("Message", "Thêm mới không thành công, vui lòng thử lại!");
            }
        } catch (ServiceBadRequestException e){
            ra.addFlashAttribute("failed", "Loại môi trường xung quanh này đã tồn tại!");
            return "redirect:/admin/surrounding/";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/surrounding/";
    }

}

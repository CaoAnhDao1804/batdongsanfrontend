package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomepageAdminController {

    @RequestMapping("/admin")
    public String helloWorld(Model model, HttpServletRequest request) {

        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser.getIdRole() ==1) {
            return "redirect:/admin/post";
        } else {
            return "redirect:/login";
        }
    }
}

package com.view.batdongsanfrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageAdminController {

    @RequestMapping("/admin")
    public String helloWorld(Model model) {
        model.addAttribute("russian", "Cao Thi Anh Dao");
        return "admin/homepageadmin";
    }
}

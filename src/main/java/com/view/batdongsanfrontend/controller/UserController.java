package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "user", method = RequestMethod.GET, produces = "application/json")
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
        List<User> listUsers = userService.getAllObject();
        modelMap.addAttribute("listUsers", listUsers);
        modelMap.addAttribute("title", "Danh sách người dùng");
        return "admin/user/index";
    }
}
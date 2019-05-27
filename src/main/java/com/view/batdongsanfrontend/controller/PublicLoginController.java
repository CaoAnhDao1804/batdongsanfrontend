package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.UserService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Iterator;

@Controller
public class PublicLoginController {

    @Autowired
    UserService userService;

    @GetMapping(value = "/login")
    public String loginPage(ModelMap model, HttpServletRequest request) {
        User loggedUser = (User) request.getSession().getAttribute("loggedUser");
        if (loggedUser != null) {
            return "redirect:/logout";
        }
        model.addAttribute("user", new User());
        return "user/login";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        if (!AuthUtil.checkUser(request)) {
            return "redirect:/login";
        }
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        session.removeAttribute("loggedUser");
        return "redirect:/login";
    }

    @GetMapping("/signup")
    public String signup(HttpServletRequest request, ModelMap model) {
        model.addAttribute("user", new User());
        return "user/signup";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public String addUser(@ModelAttribute User user, HttpServletRequest request, ModelMap modelMap, RedirectAttributes ra) {
        user.setEnable(1);
        user.setStatus(1L);
        Object object = userService.addUser(user);
        if (object == null) {
            modelMap.addAttribute("msg", "Lỗi hệ thống");
            modelMap.addAttribute("user", user);
            return "user/signup";
        }
        if (object instanceof User) {
            ra.addFlashAttribute("msg", "Vui lòng đăng nhập vào hệ thống với tài khoản đã đăng ký");
            return "redirect:/login";
        }
        String error = object.toString();
        modelMap.addAttribute("error", error);
        modelMap.addAttribute("user", user);
        return "user/signup";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("objUser") User user, HttpServletRequest request, ModelMap model) {
        Object object = userService.getUserLogin(user);
        if (object instanceof User) {

            user = User.class.cast(object);
                HttpSession session = request.getSession();
                session.setAttribute("loggedUser", user);
                if (user.getIdRole() == 1) {
                    return "redirect:/admin/post";
                } else {
                    if (user.getIdRole() == 2) {
                        return "redirect:/mod/post";
                    } else {
                        return "redirect:/";
                    }
                }

        } else {
            model.addAttribute("msg", "Tài khoản hoặc mật khẩu không chính xác!");
            model.addAttribute("user", user);
            return "user/login";
        }
    }
}

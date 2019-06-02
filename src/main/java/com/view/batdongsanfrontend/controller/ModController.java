package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.model.Utilities;
import com.view.batdongsanfrontend.service.UserService;
import com.view.batdongsanfrontend.util.AuthUtil;
import com.view.batdongsanfrontend.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ModController {

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping(value = "/admin/user/addMod", method = RequestMethod.POST, produces = "application/json")
    public ResponseEntity<User> createNewMod(@RequestBody User newMod, HttpServletRequest request) {
        System.out.println("/admin/user/addMod create new Mod");

        User user = userService.createNewMod(newMod);
        return ResponseEntity.ok(user);
    }

    @RequestMapping(value = "/admin/user/addModSubmit", method = RequestMethod.POST)
    public String create(ModelMap modelMap, @ModelAttribute("newMod") User newMod, RedirectAttributes ra) {
        try {
            User user = userService.createNewMod(newMod);
            if (user != null) {
                ra.addFlashAttribute("success", Constants.SUCCESS_ADD);
            } else {
                ra.addFlashAttribute("failed", Constants.FAILED_ADD);

            }
        } catch (ServiceBadRequestException e){
            ra.addFlashAttribute("failed", Constants.EXIST_NAME);
            return "redirect:/admin/user";
        }

        return "redirect:/admin/user";
    }
}

package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/admin/")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "user", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap) {
        List<User> listUsers = userService.getAllObject();
        modelMap.addAttribute("listUsers", listUsers);
        modelMap.addAttribute("title", "Danh sách người dùng");
        return "admin/user/index";
    }

//    @RequestMapping(value = "post-type/{id}", method = RequestMethod.POST, produces = "application/json")
//    public String editPostType(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {
//        try {
//            if (postTypeService.update(objPostType)) {
//                ra.addFlashAttribute("Message", "SuccessFull Edit");
//            } else {
//                ra.addFlashAttribute("Message", "Failed Edit");
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return "redirect:/admin/post-type";
//    }
//
//    @RequestMapping(value = "post-type/add", method = RequestMethod.POST, produces = "application/json")
//    public String createProductType(ModelMap modelMap, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {
//        try {
//            if (userService.create(objPostType) != null) {
//                ra.addFlashAttribute("Message", "SuccessFull Edit");
//            } else {
//                ra.addFlashAttribute("Message", "Failed Edit");
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return "redirect:/admin/post-type";
//    }
}

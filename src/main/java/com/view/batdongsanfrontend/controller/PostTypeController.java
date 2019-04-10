package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.PostType;
import com.view.batdongsanfrontend.service.PostTypeService;
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
public class PostTypeController {
    @Autowired
    PostTypeService postTypeService;

    @RequestMapping(value = "post-type", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap) {
        List<PostType> listPostTypes = postTypeService.getAllObject();
        modelMap.addAttribute("listPostTypes", listPostTypes);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/post-type/index";
    }

    @RequestMapping(value = "post-type/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editPostType(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {
        try {
            if (postTypeService.update(objPostType)) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/post-type";
    }

    @RequestMapping(value = "post-type/add", method = RequestMethod.POST, produces = "application/json")
    public String createProductType(ModelMap modelMap, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {
        try {
            if (postTypeService.create(objPostType) != null) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/post-type";
    }
}

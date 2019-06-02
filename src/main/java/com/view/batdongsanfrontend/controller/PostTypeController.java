package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.PostType;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.PostTypeService;
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
public class PostTypeController {
    @Autowired
    PostTypeService postTypeService;

    @RequestMapping(value = "post-type", method = RequestMethod.GET, produces = "application/json")
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

        List<PostType> listPostTypes = postTypeService.getAllObject();
        modelMap.addAttribute("listPostTypes", listPostTypes);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/post-type/index";
    }

    @RequestMapping(value = "post-type/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editPostType(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {

        try {
            if (postTypeService.update(objPostType)) {
                ra.addFlashAttribute("success", "Chỉnh sửa loại bài đăng thành công!");
            } else {
                ra.addFlashAttribute("failed", "Chỉnh sửa không thành công, vui lòng thử lại!");

            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", "Loại bài đăng này đã tồn tại");
            return "redirect:/admin/post-type";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/post-type";
    }

    @RequestMapping(value = "post-type/add", method = RequestMethod.POST, produces = "application/json")
    public String createPostType(ModelMap modelMap, @ModelAttribute("objPostType") PostType objPostType, RedirectAttributes ra) {
        try {
            if (postTypeService.create(objPostType) != null) {
                ra.addFlashAttribute("success", "Thêm loại bài đăng mới thành công!");
            } else {
                ra.addFlashAttribute("failed", "Thêm loại bài đăng mới không thành công, vui lòng thử lại!");

            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", "Loại bài đăng này đã tồn tại!");
            return "redirect:/admin/post-type";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/post-type";
    }
}

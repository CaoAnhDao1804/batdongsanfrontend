package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.Picture;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class PictureController {

    @Autowired
    PostService postService;

    @RequestMapping(value = "/admin/post/{id}/images/edit", method = RequestMethod.GET, produces = "application/json")
    public String showListPictureOfPost(ModelMap modelMap, @PathVariable("id") Long id, HttpServletRequest request) {
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
        List<Picture> pictureList = postService.findPicturesByIdPost(id);

        Picture coverPicture = new Picture();
        if (pictureList != null) {
            for (Picture obj : pictureList) {
                if (obj.getType() == 1) {
                    coverPicture = new Picture(obj);
                    break;
                }
            }
        }

//        pictureList.remove(coverPicture);

        if (pictureList != null && pictureList.size() > 0) {
            modelMap.addAttribute("pictures", pictureList);
        }
        if (coverPicture != null && coverPicture.getId() != null) {
            modelMap.addAttribute("coverPicture", coverPicture);
        }

        modelMap.addAttribute("idPost", id);
        return "admin/post/editpicture";
    }

    @RequestMapping(value = "/admin/post/image/add/{idPost}", method = RequestMethod.POST, produces = "application/json")
    public String addNewPictureForPost(@RequestParam("files") MultipartFile[] files,
                                       @PathVariable("idPost") Long idPost,
                                       RedirectAttributes ra,
                                       ModelMap modelMap,
                                       HttpServletRequest request) {

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
        List<Picture> pictureList = postService.savePicture(idPost, files);
        String redirectString = "/admin/post/" + idPost + "/images/edit";
        return "redirect:" + redirectString;
    }

    @RequestMapping(value = "/mod/post/image/add/{idPost}", method = RequestMethod.POST, produces = "application/json")
    public String addNewPictureForPostOfMod(@RequestParam("files") MultipartFile[] files,
                                            @PathVariable("idPost") Long idPost,
                                            RedirectAttributes ra,
                                            ModelMap modelMap,
                                            HttpServletRequest request) {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            return "redirect:/login";
        }
        if (loggedUser.getIdRole() == 3) {
            return "redirect:/";
        }

        if (loggedUser.getIdRole() == 1) {
            return "redirect:/admin/post";
        }

        List<Picture> pictureList = postService.savePicture(idPost, files);
        String redirectString = "/mod/post/" + idPost + "/images/edit";
        return "redirect:" + redirectString;
    }

    @RequestMapping(value = "/mod/post/{id}/images/edit", method = RequestMethod.GET, produces = "application/json")
    public String showListPictureOfPostOfMod(ModelMap modelMap, @PathVariable("id") Long id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            return "redirect:/login";
        }
        if (loggedUser.getIdRole() == 3) {
            return "redirect:/";
        }

        if (loggedUser.getIdRole() == 1) {
            return "redirect:/admin/post";
        }
        List<Picture> pictureList = postService.findPicturesByIdPost(id);

        Picture coverPicture = new Picture();
        if (pictureList != null) {
            for (Picture obj : pictureList) {
                if (obj.getType() == 1) {
                    coverPicture = new Picture(obj);
                    break;
                }
            }
        }

//        pictureList.remove(coverPicture);

        if (pictureList != null && pictureList.size() > 0) {
            modelMap.addAttribute("pictures", pictureList);
        }
        if (coverPicture != null && coverPicture.getId() != null) {
            modelMap.addAttribute("coverPicture", coverPicture);
        }

        modelMap.addAttribute("idPost", id);
        return "mod/post/listimages";
    }


}

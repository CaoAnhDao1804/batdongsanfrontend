package com.view.batdongsanfrontend.controller;


import com.view.batdongsanfrontend.dto.PostBasicInformation;
import com.view.batdongsanfrontend.model.Favourite;
import com.view.batdongsanfrontend.model.Post;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.FavoriteService;
import com.view.batdongsanfrontend.service.PostService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {

    @Autowired
    FavoriteService favoriteService;

    @Autowired
    PostService postService;

    @GetMapping(value = "/")
    public String getAll(HttpServletRequest request, ModelMap modelMap){
        if (!AuthUtil.checkUser(request)) {
            return "redirect:/";
        } else {
            HttpSession session = request.getSession();
            User loggedUser = (User) session.getAttribute("loggedUser");

            List<Post> listPosts = favoriteService.getAllFavoritePostByUser(loggedUser.getId());
            List<PostBasicInformation> postBasicInformations = new ArrayList<>();
            PostBasicInformation postBasicInformation;
            for (Post post: listPosts) {
                postBasicInformation  =  postService.convertFromPost(post);
                postBasicInformations.add(postBasicInformation);
            }
            modelMap.addAttribute("postBasicInformations", postBasicInformations);

            return "user/post/favoritePost";
        }
    }

    @RequestMapping(value="/change", method= RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public @ResponseBody String addFavorite(HttpServletRequest request) {
        if(!AuthUtil.checkUser(request)) {
            return "redirect:/login";
        }
        Long postId = Long.valueOf(request.getParameter("post_id"));
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        Favourite favorite;
        favorite = favoriteService.getFavoriteByUserIdPostId(loggedUser.getId(), postId);
        if(favorite != null) {
            return "<i class=\"fa fa-heart-o\" style=\"color: red;\" aria-hidden=\"true\"></i>\n";
        }
        favorite = favoriteService.addFavorite(postId, loggedUser.getId());
        if(favorite != null) {
            return "<i class=\"fa fa-heart-o\" style=\"color: red;\" aria-hidden=\"true\"></i>\n";
        }
        return "";
    }

}

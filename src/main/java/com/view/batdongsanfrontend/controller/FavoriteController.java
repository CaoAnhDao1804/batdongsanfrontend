package com.view.batdongsanfrontend.controller;


import com.view.batdongsanfrontend.model.Favourite;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.FavoriteService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {

    @Autowired
    FavoriteService favoriteService;

    @GetMapping(value = "/")
    public String getAll(){
        return "user/post/favoritePost";
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

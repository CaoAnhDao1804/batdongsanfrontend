package com.view.batdongsanfrontend.controller;


import com.view.batdongsanfrontend.model.CarePost;
import com.view.batdongsanfrontend.model.Favourite;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.CarePostService;
import com.view.batdongsanfrontend.service.FavoriteService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/care")
public class CarePostController {

    @Autowired
    CarePostService carePostService;

    @GetMapping(value = "/")
    public String getAll(){
        return "user/post/carepost";
    }

    @RequestMapping(value = "/change", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public @ResponseBody
    String addFavorite(HttpServletRequest request) {
        if (!AuthUtil.checkUser(request)) {
            return "redirect:/login";
        }
        Long postId = Long.valueOf(request.getParameter("post_id"));
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        CarePost carePost;
        carePost = carePostService.getCareByUserIdPostId(loggedUser.getId(), postId);
        if (carePost != null) {
            return "<i class=\"fa fa-eye\" style=\"color: dodgerblue;\" aria-hidden=\"true\"></i>";
        }
        carePost = carePostService.addCarePost(postId, loggedUser.getId());
        if (carePost != null) {
            return "<i class=\"fa fa-eye\" style=\"color: dodgerblue;\" aria-hidden=\"true\"></i>";
        }
        return "";
    }
}

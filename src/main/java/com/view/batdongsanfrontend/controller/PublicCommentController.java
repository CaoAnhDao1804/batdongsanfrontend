package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.Comment;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.CommentService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/comment")
public class PublicCommentController {

    @Autowired
    CommentService commentService;

    @RequestMapping(value = "/", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public @ResponseBody
    String addComment(HttpServletRequest request) {
        if (!AuthUtil.checkUser(request)) {
            return "redirect:/login";
        }
        String content = request.getParameter("content");
        Long postId = Long.valueOf(request.getParameter("postId"));
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");


        Comment comment = commentService.addComment(content, postId, loggedUser.getId());

        return null;

    }

}

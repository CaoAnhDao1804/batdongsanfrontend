package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.CommentResponse;
import com.view.batdongsanfrontend.model.Comment;
import com.view.batdongsanfrontend.model.Picture;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.CommentService;
import com.view.batdongsanfrontend.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    CommentService commentService;

    @GetMapping(value = "/admin/post/{postId}/comments")
    public String getAllCommentByPost(@PathVariable("postId") Long postId, ModelMap modelMap, HttpServletRequest request) {
        if (!AuthUtil.checkUser(request)) {
            return "redirect:/login";
        } else {
            HttpSession session = request.getSession();
            User loggedUser = (User) session.getAttribute("loggedUser");
            if (loggedUser.getIdRole() == 1) {
                List<CommentResponse> comments = commentService.getListCommentByPost(postId);
                modelMap.addAttribute("comments", comments);
                return "admin/post/editComment";
            } else {
                return "redirect:/login";
            }

        }
    }

    @ResponseBody
    @RequestMapping(value = "/admin/post/comment", method = RequestMethod.DELETE, produces = "application/json")
    public ResponseEntity<Boolean> deleteComment(@RequestBody Comment comment) {
        System.out.println("/admin/post/picture delete comment");

        try {
            commentService.deleteCommentById(Long.valueOf(comment.getId()));
            return ResponseEntity.ok(true);
        } catch (Exception e) {
            return ResponseEntity.ok(false);
        }
    }
}

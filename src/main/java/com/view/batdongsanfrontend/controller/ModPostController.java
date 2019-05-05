package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.CommentResponse;
import com.view.batdongsanfrontend.model.Comment;
import com.view.batdongsanfrontend.model.Post;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.CommentService;
import com.view.batdongsanfrontend.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/mod/")
public class ModPostController {

    @Autowired
    PostService postService;

    @Autowired
    CommentService commentService;

    @RequestMapping(value = "post", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap, HttpServletRequest request) {

        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");

        if (loggedUser == null) {
            return "redirect:/login";
        }
        List<Post> listPosts = postService.getAllPostOfMod(loggedUser.getId());
        modelMap.addAttribute("listPosts", listPosts);
        modelMap.addAttribute("title", "List Product Type");
        return "mod/post/index";
    }

    @GetMapping(value = "post/{postId}/comments")
    public String getAllCommentByPost(@PathVariable("postId") Long postId, ModelMap modelMap) {
        List<CommentResponse> comments = commentService.getListCommentByPost(postId);
        modelMap.addAttribute("comments", comments);
        return "mod/post/listComment";
    }

}

package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.PostBasicInformation;
import com.view.batdongsanfrontend.model.Picture;
import com.view.batdongsanfrontend.model.Post;
import com.view.batdongsanfrontend.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller

public class PostUserController {

    @Autowired
    PostService postService;

    @RequestMapping(value = "/", method = RequestMethod.GET, produces = "application/json")
    public String getAllPostForUser(ModelMap modelMap) {
        List<Post> listPosts = postService.getAllObject();
        List<PostBasicInformation> postBasicInformations = new ArrayList<>();
        PostBasicInformation postBasicInformation;
        for (Post post: listPosts) {
            postBasicInformation  =  postService.convertFromPost(post);
            postBasicInformations.add(postBasicInformation);
        }
        modelMap.addAttribute("postBasicInformations", postBasicInformations);

        return "user/listpost";
    }

}

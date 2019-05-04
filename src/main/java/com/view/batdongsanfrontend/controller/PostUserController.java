package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.PostBasicInformation;
import com.view.batdongsanfrontend.model.*;
import com.view.batdongsanfrontend.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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

    @RequestMapping(value = "/post/{id}", method = RequestMethod.GET, produces = "application/json")
    public String showDetailPost(ModelMap modelMap, @PathVariable("id") Long id) {
        Post objPost = postService.findById(id);

        ProductType productTypeOfPost  = objPost.getProductType();
        PostType postTypeOfPost = objPost.getPostType();
        List<Surrounding> surroundingsOfPost = objPost.getSuroundings();
        List<Utilities> utilitiesOfPost = objPost.getUtilities();
        User userOfPost = objPost.getUser();
        List<Picture> pictureList = postService.findPicturesByIdPost(id);

        modelMap.addAttribute("productTypeOfPost", productTypeOfPost);
        modelMap.addAttribute("postTypeOfPost", postTypeOfPost);
        modelMap.addAttribute("surroundingsOfPost", surroundingsOfPost);
        modelMap.addAttribute("utilitiesOfPost", utilitiesOfPost);
        modelMap.addAttribute("userOfPost", userOfPost);
        modelMap.addAttribute("title", "Edit Post");
        modelMap.addAttribute("objPost", objPost);
        modelMap.addAttribute("pictureList", pictureList);

        return "user/post/detailpost";
    }

}

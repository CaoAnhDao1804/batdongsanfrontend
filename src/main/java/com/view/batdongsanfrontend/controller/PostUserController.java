package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.CommentResponse;
import com.view.batdongsanfrontend.dto.CommentWithDistance;
import com.view.batdongsanfrontend.dto.PostBasicInformation;
import com.view.batdongsanfrontend.model.*;
import com.view.batdongsanfrontend.service.CarePostService;
import com.view.batdongsanfrontend.service.CommentService;
import com.view.batdongsanfrontend.service.FavoriteService;
import com.view.batdongsanfrontend.service.PostService;
import com.view.batdongsanfrontend.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller

public class PostUserController {

    @Autowired
    PostService postService;

    @Autowired
    FavoriteService favoriteService;

    @Autowired
    CarePostService carePostService;

    @Autowired
    CommentService commentService;

    @RequestMapping(value = "/", method = RequestMethod.GET, produces = "application/json")
    public String getAllPostForUser(ModelMap modelMap) {


        List<Post> listPosts = postService.getAllObjectEnable();
        getListWithMaxLenghForName(listPosts);

        List<Post> listTopMostFavoritePost = postService.getTopFavoritedPosts(10);
        getListWithMaxLenghForName(listTopMostFavoritePost);

        List<Post> listTopMostCaredPost = postService.getTopCaredPosts(10);
        getListWithMaxLenghForName(listTopMostCaredPost);

        List<Post> listTopNewestPost = postService.getTopNewestPosts(10);
        getListWithMaxLenghForName(listTopNewestPost);

        List<PostBasicInformation> postBasicInformations = convertFromPostsToPostBasicInformation(listPosts);
        List<PostBasicInformation> listTopMostFavoritePostBasicInformations = convertFromPostsToPostBasicInformation(listTopMostFavoritePost);
        List<PostBasicInformation> listTopMostCaredPostBasicInformations = convertFromPostsToPostBasicInformation(listTopMostCaredPost);
        List<PostBasicInformation> listTopNewestPostBasicInformations = convertFromPostsToPostBasicInformation(listTopNewestPost);

        modelMap.addAttribute("postBasicInformations", postBasicInformations);
        modelMap.addAttribute("topFavorite", listTopMostFavoritePostBasicInformations);
        modelMap.addAttribute("topCare", listTopMostCaredPostBasicInformations);
        modelMap.addAttribute("topNew", listTopNewestPostBasicInformations);

        //mockdata
//        modelMap.addAttribute("topFavorite", postBasicInformations);
//        modelMap.addAttribute("topCare", postBasicInformations);

        return "user/listpost";
    }

    @RequestMapping(value = "/post/{id}", method = RequestMethod.GET, produces = "application/json")
    public String showDetailPost(ModelMap modelMap, @PathVariable("id") Long id, HttpServletRequest request) {
        Post objPost = postService.findById(id);

        ProductType productTypeOfPost = objPost.getProductType();
        PostType postTypeOfPost = objPost.getPostType();
        List<Surrounding> surroundingsOfPost = objPost.getSuroundings();
        List<Utilities> utilitiesOfPost = objPost.getUtilities();
        User userOfPost = objPost.getUser();

        User authorOfPost = objPost.getUserAccount();
        if (authorOfPost.getIdRole() == 1) {
            authorOfPost.setUsername("Cao Thị Anh Đào");
            authorOfPost.setEmail("caoanhdao@gmail.com");
            authorOfPost.setPhone("012345678");
        }
        List<Picture> pictureList = postService.findPicturesByIdPost(id);
        Picture activePicture = new Picture();
        for (Picture picture: pictureList){
            activePicture.setId(picture.getId());
            activePicture.setUrl(picture.getUrl());
            break;
        }


        responseFavorite(request, modelMap, id);
        responseCare(request, modelMap, id);
        responseNumberFavoritePerson(modelMap, id);
        responseNumverCarePerson(modelMap, id);
        responseListCommentOfPost(modelMap, id);

        modelMap.addAttribute("productTypeOfPost", productTypeOfPost);
        modelMap.addAttribute("postTypeOfPost", postTypeOfPost);
        modelMap.addAttribute("surroundingsOfPost", surroundingsOfPost);
        modelMap.addAttribute("utilitiesOfPost", utilitiesOfPost);
        modelMap.addAttribute("userOfPost", userOfPost);
        modelMap.addAttribute("title", "Edit Post");
        modelMap.addAttribute("objPost", objPost);
        modelMap.addAttribute("pictureList", pictureList);
        modelMap.addAttribute("activePicture", activePicture);
        modelMap.addAttribute("authorOfPost", authorOfPost);




        return "user/post/detailpost";
    }

    private void responseListCommentOfPost(ModelMap modelMap, Long postId) {
        List<CommentResponse> listComment = commentService.getListCommentByPost(postId);

        modelMap.addAttribute("listComment", convertToCommentWithDistance(listComment));

    }

    private List<CommentWithDistance> convertToCommentWithDistance(List<CommentResponse> commentResponses){
        List<CommentWithDistance> commentWithDistances = new ArrayList<>();
        for (CommentResponse commentResponse: commentResponses) {
            CommentWithDistance commentWithDistance = new CommentWithDistance();
            commentWithDistance.setContent(commentResponse.getContent());
            commentWithDistance.setAddress(commentResponse.getAddress());
            commentWithDistance.setUsername(commentResponse.getUsername());
            commentWithDistance.setIdUser(commentResponse.getIdUser());
            commentWithDistance.setId(commentResponse.getId());
            commentWithDistance.setPostId(commentResponse.getPostId());
            commentWithDistance.setDistanceTime(StringUtil.getDistanceOfDate(commentResponse.getCreateDate()));
            commentWithDistances.add(commentWithDistance);
        }
        return commentWithDistances;
    }
    private void responseNumverCarePerson(ModelMap modelMap, Long id) {
        int sumcarePerson = carePostService.numberCareByPostId(id);
        modelMap.addAttribute("numberCarePerson", sumcarePerson);
    }

    private void responseNumberFavoritePerson(ModelMap modelMap, Long id) {
        int sumfavoritePerson = favoriteService.numberFavoriteByPostId(id);
        modelMap.addAttribute("numberFavoritePerson", sumfavoritePerson);
    }

    private void responseFavorite(HttpServletRequest request, ModelMap modelMap, Long idPost) {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            modelMap.addAttribute("isFavorite", "un-logged");
        } else {
            Favourite favourite = favoriteService.getFavoriteByUserIdPostId(loggedUser.getId(), idPost);
            if (favourite == null) {
                modelMap.addAttribute("isFavorite", "un-favorite");
            } else {
                modelMap.addAttribute("isFavorite", "favorite");
            }
        }
    }

    private void responseCare(HttpServletRequest request, ModelMap modelMap, Long idPost) {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            modelMap.addAttribute("isCare", "un-logged");
        } else {
            CarePost carePost = carePostService.getCareByUserIdPostId(loggedUser.getId(), idPost);
            if (carePost == null) {
                modelMap.addAttribute("isCare", "un-care");
            } else {
                modelMap.addAttribute("isCare", "care");
            }
        }
    }

    private List<PostBasicInformation> convertFromPostsToPostBasicInformation(List<Post> posts) {
        List<PostBasicInformation> postBasicInformations = new ArrayList<>();
        for (Post post : posts) {
            PostBasicInformation postBasicInformation;
            postBasicInformation = postService.convertFromPost(post);
            postBasicInformations.add(postBasicInformation);
        }
        return postBasicInformations;
    }

    private void getListWithMaxLenghForName(List<Post> posts) {
        for (Post post: posts) {
            post.setName(setMaxLengh(post.getName()));
        }
    }

    private String setMaxLengh(String name) {
        if (name.length() < 28){
            return name;
        } else {
            String cutedName = name.substring(0, 28);
            int index = cutedName.lastIndexOf(" ");
            cutedName = cutedName.substring(0, index);
            cutedName.concat("...");
            cutedName = cutedName + "...";
            return cutedName;
        }
    }
}

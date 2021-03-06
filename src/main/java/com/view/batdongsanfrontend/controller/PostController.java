package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.dto.PostDTO;
import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.*;
import com.view.batdongsanfrontend.service.*;
import com.view.batdongsanfrontend.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/admin/")
public class PostController {

    @Autowired
    PostService postService;

    @Autowired
    ProductTypeService productTypeService;

    @Autowired
    PostTypeService postTypeService;

    @Autowired
    SuroundingService suroundingService;

    @Autowired
    UtilitiesService utilitiesService;

    @Autowired
    DistrictService districtService;

    @Autowired
    StringUtil stringUtil;

    @ModelAttribute
    public void addCommonObject(ModelMap model) {
        List<PostType> postTypes = postTypeService.getAllObject();
        model.addAttribute("listPostTypes", postTypes);
        model.addAttribute("listProductTypes", productTypeService.getAllObject());
        model.addAttribute("listSurroundings", suroundingService.getAllObject());
        model.addAttribute("listUtilities", utilitiesService.getAllObject());
        model.addAttribute("stringUtil", stringUtil);
        model.addAttribute("districtsList", districtService.getAllDistricts());

    }

    @RequestMapping(value = "post", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap, HttpServletRequest request) {
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
        List<Post> listPosts = postService.getAllObject();
        modelMap.addAttribute("listPosts", listPosts);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/post/index";
    }

    @RequestMapping(value = "post/add", method = RequestMethod.GET, produces = "application/json")
    public String showAddPost(ModelMap modelMap, HttpServletRequest request) {
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
        modelMap.addAttribute("title", "Add Post");
        return "admin/post/add";
    }

    @RequestMapping(value = "post/edit/{id}", method = RequestMethod.GET, produces = "application/json")
    public String showEditPost(ModelMap modelMap, @PathVariable("id") Long id, HttpServletRequest request) {
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
        Post objPost = postService.findById(id);

        ProductType productTypeOfPost = objPost.getProductType();
        PostType postTypeOfPost = objPost.getPostType();
        List<Surrounding> surroundingsOfPost = objPost.getSuroundings();
        List<Utilities> utilitiesOfPost = objPost.getUtilities();
        User userOfPost = objPost.getUser();

        modelMap.addAttribute("productTypeOfPost", productTypeOfPost);
        modelMap.addAttribute("postTypeOfPost", postTypeOfPost);
        modelMap.addAttribute("surroundingsOfPost", surroundingsOfPost);
        modelMap.addAttribute("utilitiesOfPost", utilitiesOfPost);
        modelMap.addAttribute("userOfPost", userOfPost);
        modelMap.addAttribute("title", "Edit Post");
        modelMap.addAttribute("objPost", objPost);
        return "admin/post/edit";
    }


    @RequestMapping(value = "post/add", method = RequestMethod.POST, produces = "application/json")
    public String saveNewPost(@RequestParam("file") MultipartFile file,
                              @RequestParam("files") MultipartFile[] files,
                              @RequestParam("nameOwner") String nameOwner,
                              @RequestParam("surrounding_id[]") String[] surrounding_ids,
                              @RequestParam("utilities_id[]") String[] utilities_ids,
                              @RequestParam("postType_id") int postType_id,
                              @RequestParam("productType_id") int productType_id,
                              @RequestParam("district_county") int district_county,
                              @RequestParam("ward") String ward,
                              @ModelAttribute("post") PostDTO postDTO,
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

        String fullAddress = postDTO.getAddress();

        if (district_county == 7) {
            fullAddress = fullAddress + ", xã " + ward;
        } else {
            fullAddress = fullAddress + ", phường " + ward;
        }

        List<Districts> districtsList = districtService.getAllDistricts();
        for (Districts districts:districtsList){
            if (district_county == districts.getId()){
                if (district_county == 7) {
                    fullAddress = fullAddress + ", huyện " + districts.getName();
                } else {
                    fullAddress = fullAddress + ", quận " + districts.getName();
                }
            }
        }


        postDTO.setAddress(fullAddress);

        List<Surrounding> surroundings = new ArrayList<>();
        for (int i = 0; i < surrounding_ids.length; i++) {
            Surrounding surrounding = new Surrounding(Long.valueOf(surrounding_ids[i]));
            surroundings.add(surrounding);
        }

        List<Utilities> utilities = new ArrayList<>();
        for (int i = 0; i < utilities_ids.length; i++) {
            Utilities newUtilities = new Utilities(Long.valueOf(utilities_ids[i]));
            utilities.add(newUtilities);
        }

        postDTO.setPostTypeId(Long.valueOf(postType_id));
        postDTO.setProductTypeId(Long.valueOf(productType_id));
        postDTO.setSuroundings(surrounding_ids);
        postDTO.setUtilities(utilities_ids);
        postDTO.setUserId(1L);


        try {
            Post newPost = postService.save(postDTO, file, files);
            if (newPost != null) {
                ra.addFlashAttribute("success", "Thêm bài đăng mới thành công!");

            } else {
                ra.addFlashAttribute("failed", "Thêm bài đăng mới không thành công, vui lòng thử lại!");
            }
        } catch (ServiceBadRequestException e) {

            modelMap.addAttribute("message", e.getMessage());
            modelMap.addAttribute("productTypeOfPost", productTypeService.getById(Long.valueOf(productType_id)));
            modelMap.addAttribute("postTypeOfPost", postTypeService.getById(Long.valueOf(postType_id)));
            modelMap.addAttribute("surroundingsOfPost", surroundings);
            modelMap.addAttribute("utilitiesOfPost", utilities);
            modelMap.addAttribute("title", "Edit Post");
            modelMap.addAttribute("objPost", postDTO);
            return "admin/post/add";
        }


        return "redirect:/admin/post";
    }

    @RequestMapping(value = "post/edit/{id}", method = RequestMethod.POST, produces = "application/json")
    public String updatePost(@PathVariable("id") Long id,
                             @RequestParam("nameOwner") String nameOwner,
                             @RequestParam("surrounding_id[]") String[] surrounding_ids,
                             @RequestParam("utilities_id[]") String[] utilities_ids,
                             @RequestParam("postType_id") int postType_id,
                             @RequestParam("productType_id") int productType_id,
                             @ModelAttribute("post") PostDTO postDTO,
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

        postDTO.setPostTypeId(Long.valueOf(postType_id));
        postDTO.setProductTypeId(Long.valueOf(productType_id));
        postDTO.setSuroundings(surrounding_ids);
        postDTO.setUtilities(utilities_ids);
        postDTO.setUserId(1L);
        postDTO.setId(id);


        try {
            Post newPost = postService.update(postDTO);
            if (newPost != null) {
                ra.addFlashAttribute("success", "Chỉnh sửa bài đăng  thành công!");

            } else {
                ra.addFlashAttribute("failed", "Chỉnh sửa bài đăng không thành công, vui lòng thử lại!");
            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("message", "Tên bài đăng đã tồn tại");
            return "redirect:/admin/post/edit/" + postDTO.getId();
        }

        return "redirect:/admin/post";
    }


}

package com.view.batdongsanfrontend.controller;

import com.fasterxml.jackson.annotation.JsonView;
import com.view.batdongsanfrontend.model.*;
import com.view.batdongsanfrontend.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class AjaxController {

    @Autowired
    ProductTypeService productTypeService;

    @Autowired
    SuroundingService suroundingService;

    @Autowired
    PostTypeService postTypeService;

    @Autowired
    UtilitiesService utilitiesService;

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping(value = "/admin/product-type/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<ProductType> changeStatusOfProductType(@RequestBody ProductType productType) {
        System.out.println("/admin/product-type Changestatus");
        if(productTypeService.changeStatus(productType.getId()))
            return new ResponseEntity<ProductType>(productType, HttpStatus.OK);
        else
            return new ResponseEntity<ProductType>(productType, HttpStatus.BAD_REQUEST);

    }

    @ResponseBody
    @RequestMapping(value = "/admin/surrounding/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<Surrounding> changeStatusOfSurrounding(@RequestBody Surrounding surrounding) {
        System.out.println("/admin/product-type Changestatus");
        if (suroundingService.changeStatus(surrounding.getId()))
            return new ResponseEntity<Surrounding>(surrounding, HttpStatus.OK);
        else
            return new ResponseEntity<Surrounding>(surrounding, HttpStatus.BAD_REQUEST);

    }

    @ResponseBody
    @RequestMapping(value = "/admin/post-type/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<PostType> changeStatusOfPostType(@RequestBody PostType postType) {
        System.out.println("/admin/post-type Changestatus");
        if (postTypeService.changeStatus(postType.getId()))
            return new ResponseEntity<PostType>(postType, HttpStatus.OK);
        else
            return new ResponseEntity<PostType>(postType, HttpStatus.BAD_REQUEST);

    }

    @ResponseBody
    @RequestMapping(value = "/admin/utilities/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<Utilities> changeStatusOfUtilities(@RequestBody Utilities utilities) {
        System.out.println("/admin/utilities Changestatus");
        if (utilitiesService.changeStatus(utilities.getId()))
            return new ResponseEntity<Utilities>(utilities, HttpStatus.OK);
        else
            return new ResponseEntity<Utilities>(utilities, HttpStatus.BAD_REQUEST);

    }

    @ResponseBody
    @RequestMapping(value = "/admin/user/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<User> changeStatusOfUser(@RequestBody User user) {
        System.out.println("/admin/user/ Changestatus");
        if (userService.changeStatus(user.getId()))
            return new ResponseEntity<User>(user, HttpStatus.OK);
        else
            return new ResponseEntity<User>(user, HttpStatus.BAD_REQUEST);

    }

}

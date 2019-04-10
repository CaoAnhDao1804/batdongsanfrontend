package com.view.batdongsanfrontend.controller;

import com.fasterxml.jackson.annotation.JsonView;
import com.view.batdongsanfrontend.model.PostType;
import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.model.Surrounding;
import com.view.batdongsanfrontend.service.PostTypeService;
import com.view.batdongsanfrontend.service.ProductTypeService;
import com.view.batdongsanfrontend.service.SuroundingService;
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

}

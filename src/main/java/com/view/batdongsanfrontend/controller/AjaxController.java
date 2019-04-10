package com.view.batdongsanfrontend.controller;

import com.fasterxml.jackson.annotation.JsonView;
import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.swing.text.View;
import java.io.PrintWriter;


@RestController
public class AjaxController {

    @Autowired
    ProductTypeService productTypeService;

    @ResponseBody
    @RequestMapping(value = "/admin/product-type/", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity<ProductType> changeStatus(@RequestBody ProductType productType) {
        System.out.println("/admin/product-type Changestatus");
        if(productTypeService.changeStatus(productType.getId()))
            return new ResponseEntity<ProductType>(productType, HttpStatus.OK);
        else
            return new ResponseEntity<ProductType>(productType, HttpStatus.BAD_REQUEST);

    }
}

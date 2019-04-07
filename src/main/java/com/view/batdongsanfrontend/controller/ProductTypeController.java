package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/admin/")
public class ProductTypeController {

    @Autowired
    ProductTypeService productTypeService;

    @RequestMapping("/")
    public String helloWorld(Model model) {
        model.addAttribute("russian", "Cao Thi Anh Dao");
        return "helloword";
    }

    @RequestMapping(value = "product-type", method = RequestMethod.GET, produces = "application/json")
    public String index(ModelMap modelMap) {
        List<ProductType> listProductTypes = productTypeService.getAllObject();
        modelMap.addAttribute("listProductTypes", listProductTypes);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/product-type/index";
    }

}

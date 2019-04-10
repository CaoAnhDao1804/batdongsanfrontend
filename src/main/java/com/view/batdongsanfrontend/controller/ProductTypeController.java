package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @RequestMapping(value = "product-type/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editProduct(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objProductType") ProductType objProductType, RedirectAttributes ra) {
        try {
            if (productTypeService.update(objProductType)) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/product-type";
    }

    @RequestMapping(value = "product-type/add", method = RequestMethod.POST, produces = "application/json")
    public String createProductType(ModelMap modelMap, @ModelAttribute("objProductType") ProductType objProductType, RedirectAttributes ra) {
        try {
            if (productTypeService.create(objProductType) != null) {
                ra.addFlashAttribute("Message", "SuccessFull Edit");
            } else {
                ra.addFlashAttribute("Message", "Failed Edit");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/product-type";
    }







}

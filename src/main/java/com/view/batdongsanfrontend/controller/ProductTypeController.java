package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.exception.ServiceBadRequestException;
import com.view.batdongsanfrontend.model.ProductType;
import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class ProductTypeController {

    @Autowired
    ProductTypeService productTypeService;

    @RequestMapping(value = "product-type", method = RequestMethod.GET, produces = "application/json")
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

        List<ProductType> listProductTypes = productTypeService.getAllObject();
        modelMap.addAttribute("listProductTypes", listProductTypes);
        modelMap.addAttribute("title", "List Product Type");
        return "admin/product-type/index";
    }

    @RequestMapping(value = "product-type/{id}", method = RequestMethod.POST, produces = "application/json")
    public String editProduct(ModelMap modelMap, @PathVariable("id") Long id, @ModelAttribute("objProductType") ProductType objProductType, RedirectAttributes ra) {
        try {
            if (productTypeService.update(objProductType)) {
                ra.addFlashAttribute("success", "Chỉnh sửa thành công!");
            } else {
                ra.addFlashAttribute("failed", "Chỉnh sủa không thành công, vui lòng thử lại!");

            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", "Loại bất động sản này đã tồn tại");
            return "redirect:/admin/product-type";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/product-type";
    }

    @RequestMapping(value = "product-type/add", method = RequestMethod.POST, produces = "application/json")
    public String createProductType(ModelMap modelMap, @ModelAttribute("objProductType") ProductType objProductType, RedirectAttributes ra) {
        try {
            if (productTypeService.create(objProductType) != null) {
                ra.addFlashAttribute("success", "Tạo mới thành công!");
            } else {
                ra.addFlashAttribute("failed", "Vui lòng thử lại!");
            }
        } catch (ServiceBadRequestException e) {
            ra.addFlashAttribute("failed", "Loại bất động sản này đã tồn tại");
            return "redirect:/admin/product-type";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/product-type";
    }
}

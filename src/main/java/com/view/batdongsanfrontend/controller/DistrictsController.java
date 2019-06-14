package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.Ward;
import com.view.batdongsanfrontend.service.WardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class DistrictsController {

    @Autowired
    WardService wardService;

    @RequestMapping(value="/admin/districts/change_district", method= RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public @ResponseBody
    String changeDistrict(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/plain");
        String district_id = request.getParameter("district_name");
//        List<Ward> wards = wardService.getAllWardByName(district_name);
        List<Ward> wards = wardService.getAllWardByDistrictId(Integer.valueOf(district_id));


        String data = "";
        if(wards.size() > 0) {
            data += "<option selected value=''>Please choose ward</option>";
            for (Ward ward : wards) {
                data += "<option value='" + ward.getName() + "'>" + ward.getName()+ "</option>";
            }
        }
        return data;
    }

}

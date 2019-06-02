package com.view.batdongsanfrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileController {

    @GetMapping(value = "/profile/support")
    public String getProfileOfMod(){
        return "mod/profile";
    }
}

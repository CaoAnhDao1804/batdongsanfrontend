package com.view.batdongsanfrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContractUserController {
    @GetMapping(value = "/contact")
    public String getContracForUser(){
        return "user/contract";
    }
}

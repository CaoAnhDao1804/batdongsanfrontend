package com.view.batdongsanfrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageErrorController {
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String page404() {
        return "public/error-404";
    }
}

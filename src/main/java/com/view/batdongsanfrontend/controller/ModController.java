package com.view.batdongsanfrontend.controller;

import com.view.batdongsanfrontend.model.User;
import com.view.batdongsanfrontend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ModController {

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping(value = "/admin/user/addMod", method = RequestMethod.POST, produces = "application/json")
    public ResponseEntity<User> createNewMod(@RequestBody User newMod) {
        System.out.println("/admin/user/addMod create new Mod");

        User user = userService.createNewMod(newMod);
        return ResponseEntity.ok(user);

    }
}

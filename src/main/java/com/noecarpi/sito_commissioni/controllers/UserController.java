package com.noecarpi.sito_commissioni.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.noecarpi.sito_commissioni.services.UserService;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class UserController {

    @Autowired 
    private UserService userService;

    @GetMapping("/")
    public String home() {
        return "home";
    }
    
}

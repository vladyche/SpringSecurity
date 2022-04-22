package com.spring.security.controller;

import org.springframework.security.authentication.ProviderManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String homePage(){
        return "home";
    }
}

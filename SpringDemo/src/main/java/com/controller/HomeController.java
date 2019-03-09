package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    @RequestMapping(value = "/")
    public String Index(Model model) {
        model.addAttribute("title", "Home");
        return "Index";

    }

    @RequestMapping(value = "/account/loginPage")
    public String loginPage(Model model) {
        model.addAttribute("title", "Login");
        return "login";
    }

    @RequestMapping(value = "/account/registerPage")
    public String registerPage(Model model) {
        model.addAttribute("title", "Register");
        return "register";
    }

    @RequestMapping(value = "/account/changepasswordPage")
    public String changepasswordPage(Model model) {
        model.addAttribute("title", "Change your password");
        return "changepassword";
    }

    @RequestMapping(value = "/account/forgotpasswordPage")
    public String forgotpasswordPage(Model model) {
        model.addAttribute("title", "Forgot your password");
        return "forgotpassword";
    }
}

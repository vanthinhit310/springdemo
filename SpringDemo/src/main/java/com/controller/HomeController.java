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
        model.addAttribute("activeSetting","home");
        return "Index";

    }

    @RequestMapping(value = "/account/loginPage")
    public String loginPage(Model model) {
        model.addAttribute("title", "Login");
        model.addAttribute("activeSetting","acc1");
        model.addAttribute("active","a");
        return "login";
    }

    @RequestMapping(value = "/account/registerPage")
    public String registerPage(Model model) {
        model.addAttribute("title", "Register");
        model.addAttribute("activeSetting","acc2");
        model.addAttribute("active","a");
        return "register";
    }

    @RequestMapping(value = "/account/changepasswordPage")
    public String changepasswordPage(Model model) {
        model.addAttribute("title", "Change your password");
        model.addAttribute("activeSetting","acc3");
        model.addAttribute("active","a");
        return "changepassword";
    }

    @RequestMapping(value = "/account/forgotpasswordPage")
    public String forgotpasswordPage(Model model) {
        model.addAttribute("title", "Forgot your password");
        model.addAttribute("activeSetting","acc4");
        model.addAttribute("active","a");
        return "forgotpassword";
    }
}

package com.controller;


import com.model.Account;
import com.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping(value = "/Account")
public class AccountController {
    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/registerProcess", method = RequestMethod.GET)
    public @ResponseBody
    String registerProcess(HttpSession session, Model model,
                           @RequestParam(value = "name") String name,
                           @RequestParam(value = "email") String email,
                           @RequestParam(value = "password") String password
    ) {
        Account account = new Account();
        account.setName(name);
        account.setEmail(email);
        account.setPassword(password);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        String now = dtf.format(LocalDateTime.now());
        account.setCreatedDate(now);
        account.setRole((long) 1);
        accountService.addAccount(account);
        return "ok";
    }

}

package com.sajad.springcompanyappjsp.controller;


import com.sajad.springcompanyappjsp.model.Company;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String login() {
        return "index";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/homePage")
    public String home() {
        return "homePage";
    }

    @GetMapping("/addTodo")
    public String addTodo() {
        return "add-todo";
    }




}

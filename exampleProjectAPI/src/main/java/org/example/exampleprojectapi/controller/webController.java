package org.example.exampleprojectapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/api/v1/web")
public class webController {

    @GetMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @GetMapping("/authorization")
    public ModelAndView authorization() {
        return new ModelAndView("authorization");
    }

    @GetMapping("/registration")
    public ModelAndView registration() {
        return new ModelAndView("registration");
    }

    @GetMapping("/profile")
    public ModelAndView profile() {
        return new ModelAndView("profile");
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/welcome")
public class Welcome {

    @RequestMapping()
    public String welcome(Model model) {
        model.addAttribute("msg", "Welcome");
        return "welcome";
    }

}

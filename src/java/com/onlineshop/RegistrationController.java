/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import com.onlineshop.dao.UserService;
import com.onlineshop.model.User;
import com.onlineshop.utils.PasswordDigest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/register")
public class RegistrationController {

    @Autowired
    UserService us;

    @RequestMapping()
    public String registerForm(Model model) {
        RegisterFormBean registerBean = new RegisterFormBean();
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean", registerBean);
        return "registration";
    }

    @RequestMapping(value = "/save")
    public String saveRegistration(@ModelAttribute("registerBean") RegisterFormBean registerBean,
            Model model) {
        User user = new User();
        String encryptedPassword
                = PasswordDigest.createEncryptedPassword(registerBean.getPassword());
        user.setNamaLengkap(registerBean.getNamaLengkap());
        user.setEmail(registerBean.getEmail());
        user.setUsername(registerBean.getUsername());
        user.setPassword(encryptedPassword);

        us.saveUser(user);

        model.addAttribute("data", registerBean);
        return "successregistration";
    }
}

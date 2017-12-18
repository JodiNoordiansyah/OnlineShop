/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import com.onlineshop.dao.ProductService;
import com.onlineshop.model.Cart;
import com.onlineshop.model.Product;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/cart")
public class ChartController {

    int quantity = 0;

//    @Autowired
//    ProductService ps;

//    @RequestMapping()
//    public String addToChart(Model model) {
//        quantity++;
//        model.addAttribute("chart", quantity);
//        return "product";
//    }
    @RequestMapping()
    public String addSomething(HttpServletRequest request) {
        HttpSession session = request.getSession();
        quantity++;
        session.setAttribute("carts", quantity);
        session.setMaxInactiveInterval(60);
        return "redirect:/product";

    }


//    @RequestMapping(value = "/{id}")
//    public String showOneProduct(HttpServletRequest request, @PathVariable Integer id, Model model) {
//        HttpSession session = request.getSession();
//
//        Product product = ps.findById(id);
//        model.addAttribute("products", product);
//        session.setAttribute("carts", model);
//        session.setMaxInactiveInterval(60);
//        return "cart";
//   
//    
//    }
}

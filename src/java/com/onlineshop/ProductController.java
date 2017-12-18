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
 * @author user
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService ps;

    int quantity = 0;

    @RequestMapping()
    public String showAllProduct(Model model) {
        List<Product> products = ps.findAllProduct();
        model.addAttribute("products", products);
        return "product";
    }

    @RequestMapping(value = "/{id}")
    public String showOneProduct(@PathVariable Integer id, Model model) {
        Product product = ps.findById(id);
        model.addAttribute("products", product);
        return "productdetail";
    }

//    @RequestMapping(value ="/cart")
//    public String addToChart(Model model) {
//        quantity++;
//        model.addAttribute("chart", quantity);
//        return "product";
//    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import com.onlineshop.dao.ProductService;
import com.onlineshop.model.Product;
import java.util.Map;
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
@RequestMapping("/cart")
public class CartController {

    @Autowired
    ProductService ps;

    CartBean cart;

    double totalHargaDalamChart;
    int key = 1;

    public CartController() {
        cart = new CartBean();
    }

    @RequestMapping(value = "/add/{id}")
    public String addCart(@PathVariable Integer id, Model model, HttpSession session) {

        Product prod = ps.findById(id);

        cart.getCarts().put(key++, prod);
        int count = cart.getCarts().size();

        Double tot = totalHargaDalamChart + prod.getHarga();
        model.addAttribute("carts", tot);
        session.setAttribute("cart", cart);

        return "redirect:/product";
    }

    @RequestMapping(value = "/show")
    public String showCart(Model model, HttpSession session) {
        Map<Integer, Product> cartsa = cart.getCarts();
        Double total = 0.0;
        for (Map.Entry<Integer, Product> entry : cartsa.entrySet()) {
            Product value = entry.getValue();
            total = total + value.getHarga();
        }
        totalHargaDalamChart = total;
        model.addAttribute("carts", total);
        
        return "carts";
    }

    @RequestMapping(value = "/{id}/{value}")
    public String removeCart(@PathVariable Integer id, @PathVariable Integer value, Model model) {

        Product prod = ps.findById(id);

        Double tot;
        totalHargaDalamChart = totalHargaDalamChart - prod.getHarga();
        cart.getCarts().remove(value, prod);
        int count = cart.getCarts().size();

        model.addAttribute("carts", totalHargaDalamChart);

        if (totalHargaDalamChart == 0.0) {
            return "redirect:/product";
        } else {
            return "carts";
        }
    }
}

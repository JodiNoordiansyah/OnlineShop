/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Acer
 */
public class Cart {

    private Map<Integer, Product> cartItems ;

    public Cart() {
        cartItems = new HashMap<>();
    }

    public Cart(Map<Integer, Product> cartItems) {
        this.cartItems = cartItems;
    }
    

    /**
     * @return the cartItems
     */
    public Map<Integer, Product> getCartItems() {
        return cartItems;
    }

    /**
     * @param cartItems the cartItems to set
     */
    public void setCartItems(Map<Integer, Product> cartItems) {
        this.cartItems = cartItems;
    }
}

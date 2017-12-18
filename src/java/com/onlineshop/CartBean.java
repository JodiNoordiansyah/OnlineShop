/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import com.onlineshop.model.Product;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author user
 */
public class CartBean {
    private Map<Integer, Product> carts;
     
     public CartBean(Map<Integer, Product> carts) {
        this.carts = carts;
    }

    public CartBean() {
        carts = new HashMap<>();
    }

    /**
     * @return the carts
     */
    public Map<Integer, Product> getCarts() {
        return carts;
    }

    /**
     * @param carts the carts to set
     */
    public void setCarts(Map<Integer, Product> carts) {
        this.carts = carts;
    }
}

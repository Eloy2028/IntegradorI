/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.beans;

import com.electronica.electronica.services.ProductoService;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;

/**
 *
 * @author lol_2
 */
@Named(value = "productoBean")
@RequestScoped
public class ProductoBean {
    private ProductoService service = ProductoService.getInstance();

    public ProductoService getService() {
        return service;
    }

    public void setService(ProductoService service) {
        this.service = service;
    }
    
    public ProductoBean() {
        
    }
}
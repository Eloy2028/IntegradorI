/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.beans;

import com.electronica.electronica.services.CategoriaService;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;

/**
 *
 * @author lol_2
 */
@Named(value = "categoriaBean")
@RequestScoped
public class CategoriaBean {
    private CategoriaService service = CategoriaService.getInstance();

    public CategoriaService getService() {
        return service;
    }

    public void setService(CategoriaService service) {
        this.service = service;
    }
    
    public CategoriaBean() {
        
    }
}
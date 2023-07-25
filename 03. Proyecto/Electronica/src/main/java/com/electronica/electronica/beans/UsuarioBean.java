/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.beans;

import com.electronica.electronica.services.UsuarioService;
import jakarta.enterprise.context.RequestScoped;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;

/**
 *
 * @author lol_2
 */
@Named(value = "usuarioBean")
@RequestScoped
public class UsuarioBean {

    private UsuarioService service = UsuarioService.getInstance();

    public UsuarioService getService() {
        return service;
    }

    public void setService(UsuarioService service) {
        this.service = service;
    }

    public UsuarioBean() {

    }
}

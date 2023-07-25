/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.beans;

import com.electronica.electronica.services.ContactoService;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;

/**
 *
 * @author lol_2
 */
@Named(value="contactoBean")
@RequestScoped
public class ContactoBean {
    private ContactoService service = ContactoService.getInstance();

    public ContactoService getService() {
        return service;
    }

    public void setService(ContactoService service) {
        this.service = service;
    }
    
    public ContactoBean() {
        
    }
}

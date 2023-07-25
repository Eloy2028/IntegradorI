/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.services;

import com.electronica.electronica.dao.DaoContacto;
import com.electronica.electronica.dao.impl.DaoContactoImpl;
import com.electronica.electronica.dto.MensajeDto;

/**
 *
 * @author lol_2
 */
public class ContactoService {
    private final DaoContacto repositorio = new DaoContactoImpl();
    private static final ContactoService INSTANCE = new ContactoService();

    private String mensaje;

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    private ContactoService() {
    }

    public static ContactoService getInstance() {
        return INSTANCE;
    }

    public String mensajeINS(MensajeDto mensaje){
        this.mensaje = repositorio.mensajeINS(mensaje);
        if (this.mensaje == null) {
            this.mensaje = "Se envió correctamente";
        }
        return this.mensaje;
    }
}

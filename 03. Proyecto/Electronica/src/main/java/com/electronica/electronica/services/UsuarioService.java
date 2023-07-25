/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.services;

import com.electronica.electronica.dao.DaoUsuario;
import com.electronica.electronica.dao.impl.DaoUsuarioImpl;
import com.electronica.electronica.entity.Usuario;
import java.util.List;

/**
 *
 * @author lol_2
 */
public class UsuarioService {
    private final DaoUsuario repositorio = new DaoUsuarioImpl();
    private static final UsuarioService INSTANCE = new UsuarioService();

    private UsuarioService() {
    }

    public static UsuarioService getInstance() {
        return INSTANCE;
    }

    public List<Usuario> usuarioSel() {
        return repositorio.usuarioSel();
    }

    public Usuario usuarioGet(Integer id) {
        return repositorio.usuarioGet(id);
    }

    public String usuarioIns(Usuario usuarios) {
        return repositorio.usuarioIns(usuarios);
    }

    public String usuarioUpd(Usuario usuarios) {
        return repositorio.usuarioUpd(usuarios);
    }

    public String usuarioDel(Integer id) {
        return repositorio.usuarioDel(id);
    }
    
    public String usuarioSignIn(String usuario, String password){
        return "";
    }
    public String usuarioSignUp(Usuario usuario){
        return"";
    }
}

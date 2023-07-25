/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao;

import com.electronica.electronica.entity.Usuario;
import java.util.List;

/**
 *
 * @author lol_2
 */
public interface DaoUsuario {
    List<Usuario> usuarioSel();
    Usuario usuarioGet(Integer id);
    String usuarioIns(Usuario usuario);
    String usuarioUpd(Usuario usuario);
    String usuarioDel(Integer id);
}

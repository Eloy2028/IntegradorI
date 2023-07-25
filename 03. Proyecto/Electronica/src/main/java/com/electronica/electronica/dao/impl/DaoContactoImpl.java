/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao.impl;

import com.electronica.electronica.dao.DaoContacto;
import com.electronica.electronica.dto.MensajeDto;
import com.electronica.electronica.util.Conexion;

import java.sql.*;

/**
 *
 * @author lol_2
 */
public class DaoContactoImpl implements DaoContacto {

    // Configuración de JavaMail
    private final Conexion conexion;
    private String mensaje;

    
    public DaoContactoImpl() {
        this.conexion = new Conexion();
    }

    @Override
    public String getMensaje() {
        return this.mensaje;
    }

    @Override
    public String mensajeINS(MensajeDto msj) {
        mensaje = null;
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO contacto(")
                .append("nombre,")
                .append("apellido,")
                .append("correo,")
                .append("motivo,")
                .append("texto")
                .append(") VALUES (?,?,?,?,?)");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setString(1, msj.getNombre());
            ps.setString(2, msj.getApellido());
            ps.setString(3, msj.getEmail());
            ps.setString(4, msj.getMotivo());
            ps.setString(5, msj.getTexto());
            int ctos = ps.executeUpdate();
            mensaje = (ctos == 0)
                    ? "Cero filas insertadas"
                    : null;
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return mensaje;
    }

    @Override
    public String EnviarCorreo(MensajeDto msj) {
        mensaje = null;
        return mensaje;
    }


}

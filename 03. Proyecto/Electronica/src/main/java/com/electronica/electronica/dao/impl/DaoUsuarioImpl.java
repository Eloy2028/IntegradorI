/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao.impl;

import com.electronica.electronica.dao.DaoUsuario;
import com.electronica.electronica.entity.Usuario;
import com.electronica.electronica.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lol_2
 */
public class DaoUsuarioImpl implements DaoUsuario {

    private final Conexion conexion;
    private String mensaje;

    public DaoUsuarioImpl() {
        conexion = new Conexion();
    }

    @Override
    public List<Usuario> usuarioSel() {
        mensaje = null;
        List<Usuario> lista = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" id,")
                .append(" nombre,")
                .append(" apellido,")
                .append(" password,")
                .append(" dni,")
                .append(" direccion,")
                .append(" ciudad,")
                .append(" pais,")
                .append(" telefono,")
                .append(" estado,")
                .append(" trabajador")
                .append(" FROM usuario");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setPassword(rs.getString("password"));
                usuario.setDni(rs.getInt("dni"));
                usuario.setDireccion(rs.getString("direccion"));
                usuario.setCiudad(rs.getString("ciudad"));
                usuario.setPais(rs.getString("pais"));
                usuario.setTelefono(rs.getInt("telefono"));
                usuario.setEstado(rs.getBoolean("estado"));
                usuario.setTrabajador(rs.getBoolean("trabajador"));
                lista.add(usuario);
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return lista;
    }

    @Override
    public Usuario usuarioGet(Integer id) {
        mensaje = null;
        Usuario usuario = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" id,")
                .append(" nombre,")
                .append(" apellido,")
                .append(" password,")
                .append(" dni,")
                .append(" direccion,")
                .append(" ciudad,")
                .append(" pais,")
                .append(" telefono,")
                .append(" estado,")
                .append(" trabajador")
                .append(" FROM usuario")
                .append(" WHERE id = ?");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setPassword(rs.getString("password"));
                usuario.setDni(rs.getInt("dni"));
                usuario.setDireccion(rs.getString("direccion"));
                usuario.setCiudad(rs.getString("ciudad"));
                usuario.setPais(rs.getString("pais"));
                usuario.setTelefono(rs.getInt("telefono"));
                usuario.setEstado(rs.getBoolean("estado"));
                usuario.setTrabajador(rs.getBoolean("trabajador"));
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return usuario;
    }

    @Override
    public String usuarioIns(Usuario usuario) {
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO usuario(")
                .append(" nombre,")
                .append(" apellido,")
                .append(" password,")
                .append(" dni,")
                .append(" direccion,")
                .append(" ciudad,")
                .append(" pais,")
                .append(" telefono,")
                .append(" estado,")
                .append(" trabajador")
                .append(") VALUES (?,?,?,?,?,?,?,?,?,?)");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getPassword());
            ps.setInt(4, usuario.getDni());
            ps.setString(5, usuario.getDireccion());
            ps.setString(6, usuario.getCiudad());
            ps.setString(7, usuario.getPais());
            ps.setInt(8, usuario.getTelefono());
            ps.setBoolean(9, usuario.isEstado());
            ps.setBoolean(10, usuario.isTrabajador());
            int ctos = ps.executeUpdate();
            ps.close();
            mensaje = (ctos == 0)
                    ? "Cero filas insertadas"
                    : null;
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return mensaje;
    }

    @Override
    public String usuarioUpd(Usuario usuario) {
        mensaje = null;
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE usuario SET ")
                .append(" nombre = ?,")
                .append(" apellido = ?,")
                .append(" password = ?,")
                .append(" dni = ?,")
                .append(" direccion = ?,")
                .append(" ciudad = ?,")
                .append(" pais = ?,")
                .append(" telefono = ?,")
                .append(" estado = ?,")
                .append(" trabajador = ?")
                .append(" WHERE id  = ?");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getPassword());
            ps.setInt(4, usuario.getDni());
            ps.setString(5, usuario.getDireccion());
            ps.setString(6, usuario.getCiudad());
            ps.setString(7, usuario.getPais());
            ps.setInt(8,usuario.getTelefono());
            ps.setBoolean(9,usuario.isEstado());
            ps.setBoolean(10,usuario.isTrabajador());
            ps.setInt(11,usuario.getId());
            int ctos = ps.executeUpdate();
            mensaje = (ctos == 0)
                    ? "Cero filas actualizadas"
                    : null;
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return mensaje;
    }

    @Override
    public String usuarioDel(Integer id) {
        StringBuilder sql = new StringBuilder();
        sql.append("DELETE FROM usuario")
                .append(" WHERE id = ?");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setInt(1, id);
            int ctos = ps.executeUpdate();
            mensaje = (ctos == 0)
                    ? "Cero filas eliminadas"
                    : null;
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return mensaje;
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao.impl;

import com.electronica.electronica.dao.DaoCategoria;
import com.electronica.electronica.dto.CategoriaDto;
import com.electronica.electronica.entity.Producto;
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
public class DaoCategoriaImpl implements DaoCategoria {

    private final Conexion conexion;
    private String mensaje;

    public DaoCategoriaImpl() {
        conexion = new Conexion();
    }
    
    @Override
    public List<CategoriaDto> categoriaSel() {
        mensaje = null;
        List<CategoriaDto> lista = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" id,")
                .append(" nombre")
                .append(" FROM categoria");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                CategoriaDto categoria = new CategoriaDto();
                categoria.setId(rs.getInt(1));
                categoria.setNombre(rs.getString(2));
                lista.add(categoria);
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return lista;
    }

    @Override
    public CategoriaDto categoriaGet(Integer id) {
        mensaje = null;
        CategoriaDto categoria = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" id,")
                .append(" nombre,")
                .append(" FROM categoria")
                .append(" WHERE id = ?");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                categoria = new CategoriaDto();
                categoria.setId(id);
                categoria.setNombre(rs.getString(2));
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return categoria;
    }

    @Override
    public String categoriaIns(CategoriaDto categoria) {
        mensaje = null;
        return mensaje;
    }

    @Override
    public String categoriaUpd(CategoriaDto categoria) {
        mensaje = null;
        return mensaje;
    }

    @Override
    public String categoriaDel(Integer id) {
        mensaje = null;
        return mensaje;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao.impl;

import com.electronica.electronica.dao.DaoProducto;
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
public class DaoProductoImpl implements DaoProducto {

    
    private final Conexion conexion;
    private String mensaje;

    public DaoProductoImpl() {
        conexion = new Conexion();
    }
    
    @Override
    public List<Producto> productoSel() {
        mensaje = null;
        List<Producto> lista = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" p.IdProducto,")
                .append(" p.Nombres,")
                .append(" p.Imagen,")
                .append(" p.Precio,")
                .append(" p.Stock,")
                .append(" p.Estado,")
                .append(" c.id,")
                .append(" c.nombre")
                .append(" FROM producto p")
                .append(" INNER JOIN categoria c")
                .append(" ON c.id = p.id_categoria");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                Producto producto = new Producto();
                CategoriaDto categoria = new CategoriaDto();
                int id = rs.getInt(1);
                producto.setId(id);
                producto.setNombre(rs.getString(2));
                producto.setImagen(rs.getString(3));
                producto.setPrecio(rs.getDouble(4));
                producto.setStock(rs.getInt(5));
                producto.setEstado(rs.getInt(6));
                categoria.setId(rs.getInt(7));
                categoria.setNombre(rs.getString(8));
                producto.setCategoria(categoria);
                lista.add(producto);
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return lista;
    }

    @Override
    public Producto productoGet(Integer id) {
        mensaje = null;
        Producto producto = null;
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ")
                .append(" p.IdProducto,")
                .append(" p.Nombres,")
                .append(" p.Imagen,")
                .append(" p.Precio,")
                .append(" p.Stock,")
                .append(" p.Estado,")
                .append(" c.id,")
                .append(" c.nombre")
                .append(" FROM producto p")
                .append(" INNER JOIN categoria c")
                .append(" ON c.id = p.id_categoria")
                .append(" WHERE p.IdProducto = ?");
        try (Connection cn = conexion.getConexion()) {
            PreparedStatement ps = cn.prepareStatement(sql.toString());
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                producto = new Producto();
                CategoriaDto categoria = new CategoriaDto();
                producto.setId(id);
                producto.setNombre(rs.getString(2));
                producto.setImagen(rs.getString(3));
                producto.setPrecio(rs.getDouble(4));
                producto.setStock(rs.getInt(5));
                producto.setEstado(rs.getInt(6));
                categoria.setId(rs.getInt(7));
                categoria.setNombre(rs.getString(8));
                producto.setCategoria(categoria);
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        }
        return producto;
    }

    @Override
    public String productoIns(Producto producto) {
        mensaje = null;
        return mensaje;
    }

    @Override
    public String productoUpd(Producto producto) {
        mensaje = null;
        return mensaje;
    }

    @Override
    public String productoDel(Integer id) {
        mensaje = null;
        return mensaje;
    }
    
}

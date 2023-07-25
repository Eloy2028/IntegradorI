/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.services;

import com.electronica.electronica.dao.DaoProducto;
import com.electronica.electronica.dao.impl.DaoProductoImpl;
import com.electronica.electronica.entity.Producto;
import java.util.List;

/**
 *
 * @author lol_2
 */
public class ProductoService {
    private final DaoProducto repositorio = new DaoProductoImpl();
    private static final ProductoService INSTANCE = new ProductoService();

    private ProductoService() {
    }

    public static ProductoService getInstance() {
        return INSTANCE;
    }

    public List<Producto> productoSel() {
        return repositorio.productoSel();
    }

    public Producto productoGet(Integer id) {
        return repositorio.productoGet(id);
    }

    public String productoIns(Producto productos) {
        return repositorio.productoIns(productos);
    }

    public String productoUpd(Producto productos) {
        return repositorio.productoUpd(productos);
    }

    public String productoDel(Integer id) {
        return repositorio.productoDel(id);
    }
}

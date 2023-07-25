/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao;

import com.electronica.electronica.entity.Producto;
import java.util.List;

/**
 *
 * @author lol_2
 */
public interface DaoProducto {
    List<Producto> productoSel();
    Producto productoGet(Integer id);
    String productoIns(Producto producto);
    String productoUpd(Producto producto);
    String productoDel(Integer id);
}

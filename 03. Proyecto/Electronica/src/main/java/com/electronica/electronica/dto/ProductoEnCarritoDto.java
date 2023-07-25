/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dto;

import com.electronica.electronica.entity.Producto;
import java.io.Serializable;

/**
 *
 * @author lol_2
 */
public class ProductoEnCarritoDto implements Serializable {
    private Producto producto;
    private int cantidad;

    public ProductoEnCarritoDto(Producto producto) {
        this.producto = producto;
        this.cantidad = 1;
    }

    public Producto getProducto() {
        return producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void incrementarCantidad() {
        cantidad++;
    }
    public double getPrecio() {
        return producto.getPrecio();
    }
}

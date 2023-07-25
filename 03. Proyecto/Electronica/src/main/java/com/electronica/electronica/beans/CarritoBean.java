/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.beans;

import com.electronica.electronica.dto.ProductoEnCarritoDto;
import com.electronica.electronica.entity.Producto;
import jakarta.enterprise.context.RequestScoped;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.bean.ViewScoped;
import jakarta.inject.Named;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lol_2
 */
@Named
@SessionScoped
public class CarritoBean implements Serializable {

    private static List<ProductoEnCarritoDto> productosEnCarrito = new ArrayList<>();

    public CarritoBean() {
    }

    public void agregarAlCarrito(Producto producto) {
        for (ProductoEnCarritoDto productoEnCarrito : productosEnCarrito) {
            if (productoEnCarrito.getProducto().equals(producto)) {
                productoEnCarrito.incrementarCantidad();
                return;
            }
        }

        // Si el producto no existe en el carrito, lo agregamos con cantidad 1
        productosEnCarrito.add(new ProductoEnCarritoDto(producto));
    }

    public List<ProductoEnCarritoDto> getProductosEnCarrito() {
        return productosEnCarrito;
    }

    public double calcularSubtotal() {
        double subtotal = 0;
        for (ProductoEnCarritoDto productoEnCarrito : productosEnCarrito) {
            subtotal += productoEnCarrito.getProducto().getPrecio() * productoEnCarrito.getCantidad();
        }
        return subtotal;
    }
}

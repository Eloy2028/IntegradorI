/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.services;

import com.electronica.electronica.dao.DaoCategoria;
import com.electronica.electronica.dao.DaoProducto;
import com.electronica.electronica.dao.impl.DaoCategoriaImpl;
import com.electronica.electronica.dao.impl.DaoProductoImpl;
import com.electronica.electronica.dto.CategoriaDto;
import com.electronica.electronica.entity.Producto;
import java.util.List;

/**
 *
 * @author lol_2
 */
public class CategoriaService {
    private final DaoCategoria repositorio = new DaoCategoriaImpl();
    private static final CategoriaService INSTANCE = new CategoriaService();

    private CategoriaService() {
    }

    public static CategoriaService getInstance() {
        return INSTANCE;
    }

    public List<CategoriaDto> categoriaSel() {
        return repositorio.categoriaSel();
    }

    public CategoriaDto categoriaGet(Integer id) {
        return repositorio.categoriaGet(id);
    }

    public String categoriaIns(CategoriaDto categorias) {
        return repositorio.categoriaIns(categorias);
    }

    public String categoriaUpd(CategoriaDto categorias) {
        return repositorio.categoriaUpd(categorias);
    }

    public String categoriaDel(Integer id) {
        return repositorio.categoriaDel(id);
    }
}

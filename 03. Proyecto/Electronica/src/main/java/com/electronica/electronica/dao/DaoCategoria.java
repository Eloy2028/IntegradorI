/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.electronica.electronica.dao;

import com.electronica.electronica.dto.CategoriaDto;
import java.util.List;

/**
 *
 * @author lol_2
 */
public interface DaoCategoria {
    List<CategoriaDto> categoriaSel();
    CategoriaDto categoriaGet(Integer id);
    String categoriaIns(CategoriaDto categoria);
    String categoriaUpd(CategoriaDto categoria);
    String categoriaDel(Integer id);
}

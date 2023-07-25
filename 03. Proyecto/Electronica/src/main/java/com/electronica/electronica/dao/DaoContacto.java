package com.electronica.electronica.dao;

import com.electronica.electronica.dto.MensajeDto;

/**
 *
 * @author lol_2
 */
public interface DaoContacto {
    String mensajeINS(MensajeDto msj);
    String EnviarCorreo(MensajeDto msj);
    String getMensaje();
}

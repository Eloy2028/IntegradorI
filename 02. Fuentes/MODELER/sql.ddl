-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2023-07-17 23:11:34 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE carrito (
    codigo_carrito     unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    cantidad           CHAR 
--  WARNING: CHAR size not specified 
    ,
    cliente_id_cliente CHAR(5) NOT NULL,
    stock_codigo_stock CHAR(30 CHAR) NOT NULL
);

ALTER TABLE carrito ADD CONSTRAINT carrito_pk PRIMARY KEY ( codigo_carrito );

CREATE TABLE cliente (
    id_cliente          CHAR(5) NOT NULL,
    dni_cliente         CHAR(8),
    telefono            VARCHAR2(9),
    usuario_creacion    unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_creacion      unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    usuario_mod         unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_mod           unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    empleado_id_persona CHAR(5 CHAR) NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE empleado (
    id_persona       CHAR(5 CHAR) NOT NULL,
    nombre           VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    apellido_paterno VARCHAR2(20),
    apellido_materno VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    email            VARCHAR2(12 CHAR),
    edad             INTERVAL DAY(9) TO SECOND(0),
    genero           CHAR(1),
    direccion        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    usuario_creacion unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_creacion   unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    usuario_mod      unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_mod        unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    tienda_ruc       CHAR(9 CHAR) NOT NULL
);

ALTER TABLE empleado ADD CONSTRAINT persona_pk PRIMARY KEY ( id_persona );

CREATE TABLE entrega_detalle (
    id_entrega_detalle          CHAR(5) NOT NULL,
    entrega_detalle             VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    entrega_detalle_descripcion unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    id_entrega                  VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    usuario_creacion            CHAR(5),
    fecha_creacion              unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    usuario_mod                 unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_mod                   unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    pedido_id_pedido            CHAR(5 CHAR) NOT NULL
);

ALTER TABLE entrega_detalle ADD CONSTRAINT entrega_detalle_pk PRIMARY KEY ( id_entrega_detalle );

CREATE TABLE pedido (
    id_pedido           CHAR(5 CHAR) NOT NULL,
    nro_pedido          CHAR(5),
    id_cliente          CHAR(5),
    pedido_fecha        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    pedido_monto        VARCHAR2(20),
    id_entrega_detalle  VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    usuario_creacion    unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_creacion      unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    usuario_mod         unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    fecha_mod           unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    empleado_id_persona CHAR(5 CHAR) NOT NULL
);

ALTER TABLE pedido ADD CONSTRAINT pedido_pk PRIMARY KEY ( id_pedido );

CREATE TABLE stock (
    codigo_stock                       CHAR(30 CHAR) NOT NULL,
    descripcion                        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    imagen                             BLOB,
    categoria                          VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    color                              VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    empleado_id_persona                CHAR(5 CHAR) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    entrega_detalle_id_entrega_detalle CHAR(5) NOT NULL
);

ALTER TABLE stock ADD CONSTRAINT stock_pk PRIMARY KEY ( codigo_stock );

CREATE TABLE tienda (
    ruc                    CHAR(9 CHAR) NOT NULL,
    nombre                 VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    provincia              VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    distrito               VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
    ,
    carrito_codigo_carrito unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL
);

ALTER TABLE tienda ADD CONSTRAINT tienda_pk PRIMARY KEY ( ruc );

ALTER TABLE carrito
    ADD CONSTRAINT carrito_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE carrito
    ADD CONSTRAINT carrito_stock_fk FOREIGN KEY ( stock_codigo_stock )
        REFERENCES stock ( codigo_stock );

ALTER TABLE cliente
    ADD CONSTRAINT cliente_empleado_fk FOREIGN KEY ( empleado_id_persona )
        REFERENCES empleado ( id_persona );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_tienda_fk FOREIGN KEY ( tienda_ruc )
        REFERENCES tienda ( ruc );

ALTER TABLE entrega_detalle
    ADD CONSTRAINT entrega_detalle_pedido_fk FOREIGN KEY ( pedido_id_pedido )
        REFERENCES pedido ( id_pedido );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_empleado_fk FOREIGN KEY ( empleado_id_persona )
        REFERENCES empleado ( id_persona );

ALTER TABLE stock
    ADD CONSTRAINT stock_empleado_fk FOREIGN KEY ( empleado_id_persona )
        REFERENCES empleado ( id_persona );

ALTER TABLE stock
    ADD CONSTRAINT stock_entrega_detalle_fk FOREIGN KEY ( entrega_detalle_id_entrega_detalle )
        REFERENCES entrega_detalle ( id_entrega_detalle );

ALTER TABLE tienda
    ADD CONSTRAINT tienda_carrito_fk FOREIGN KEY ( carrito_codigo_carrito )
        REFERENCES carrito ( codigo_carrito );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             16
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  32
-- WARNINGS                                 1

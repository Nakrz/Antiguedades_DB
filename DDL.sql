DROP DATABASE IF EXISTS antiguedades_db; 
CREATE DATABASE antiguedades_db;
USE antiguedades_db;



CREATE TABLE pais(
    id_pais INT(10) PRIMARY KEY NOT NULL,
    nombre_pais VARCHAR(50)
);

CREATE TABLE ciudad(
    id_ciudad INT(10) PRIMARY KEY NOT NULL,
    nombre_ciudad VARCHAR(50),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE rol(
    id_rol INT(10) PRIMARY KEY NOT NULL,
    nombre_rol VARCHAR(50)
);

CREATE TABLE disponibilidad (
    id_disponibilidad INT(10) PRIMARY KEY NOT NULL,
    nombre VARCHAR(100)
);

CREATE TABLE categorias (
    id_categoria INT(10) PRIMARY KEY NOT NULL,
    nombre_categoria VARCHAR(100)
);

CREATE TABLE administrador (
    id_administrador INT(10) PRIMARY KEY NOT NULL,
    nombre_administrador VARCHAR(50),
    apellido_administrador VARCHAR(100),
    correo VARCHAR(100)
);

CREATE TABLE cliente(
    id_cliente INT(10) PRIMARY KEY NOT NULL,
    nombre_cliente VARCHAR(100),
    apellido_cliente VARCHAR(100),
    correo_cliente VARCHAR(100),
    telefono_cliente BIGINT, 
    rol INT,
    id_ciudad INT,
    FOREIGN KEY (rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE antiguedades (
    id_antiguedad INT(10) PRIMARY KEY NOT NULL,
    id_categoria INT,
    id_disponibilidad INT,
    origen VARCHAR(100),
    epoca VARCHAR(100),
    estado_conservacion VARCHAR(50),
    precio DECIMAL(10, 2),
    descripcion TEXT,
    id_administrador INT,
    FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_disponibilidad) REFERENCES disponibilidad(id_disponibilidad)
);

CREATE TABLE transacciones (
    id_transaccion INT(10) PRIMARY KEY NOT NULL,
    id_antiguedad INT,
    id_cliente INT,
    id_administrador INT,
    fecha_transaccion DATE,
    tipo_transaccion ENUM('Compra', 'Venta'),
    cantidad INT,
    FOREIGN KEY (id_antiguedad) REFERENCES antiguedades(id_antiguedad),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador)
);

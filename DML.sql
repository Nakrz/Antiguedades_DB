
INSERT INTO pais (id_pais, nombre_pais) VALUES (1, 'España');
INSERT INTO pais (id_pais, nombre_pais) VALUES (2, 'Francia');
INSERT INTO pais (id_pais, nombre_pais) VALUES (3, 'Italia');
INSERT INTO pais (id_pais, nombre_pais) VALUES (4, 'Alemania');
INSERT INTO pais (id_pais, nombre_pais) VALUES (5, 'Reino Unido');


INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_pais) VALUES (1, 'Madrid', 1);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_pais) VALUES (2, 'Paris', 2);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_pais) VALUES (3, 'Roma', 3);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_pais) VALUES (4, 'Berlin', 4);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_pais) VALUES (5, 'Londres', 5);


INSERT INTO rol (id_rol, nombre_rol) VALUES (1, 'Administrador');  
INSERT INTO rol (id_rol, nombre_rol) VALUES (2, 'Vendedor');
INSERT INTO rol (id_rol, nombre_rol) VALUES (3, 'Comprador');
INSERT INTO rol (id_rol, nombre_rol) VALUES (4, 'Gestor');
INSERT INTO rol (id_rol, nombre_rol) VALUES (5, 'Asistente');


INSERT INTO disponibilidad (id_disponibilidad, nombre) VALUES (1, 'Disponible');
INSERT INTO disponibilidad (id_disponibilidad, nombre) VALUES (2, 'Vendido');
INSERT INTO disponibilidad (id_disponibilidad, nombre) VALUES (3, 'Retirado');
INSERT INTO disponibilidad (id_disponibilidad, nombre) VALUES (4, 'En reserva');
INSERT INTO disponibilidad (id_disponibilidad, nombre) VALUES (5, 'En restauracion');


INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (1, 'Muebles');
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (2, 'Arte');
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (3, 'Joyeria');
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (4, 'Relojes');
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (5, 'Objetos de coleccion');


INSERT INTO administrador (id_administrador, nombre_administrador, apellido_administrador, correo) VALUES (1, 'Juan', 'Perez', 'juan.perez@example.com');
INSERT INTO administrador (id_administrador, nombre_administrador, apellido_administrador, correo) VALUES (2, 'Ana', 'Garcia', 'ana.garcia@example.com');
INSERT INTO administrador (id_administrador, nombre_administrador, apellido_administrador, correo) VALUES (3, 'Luis', 'Fernández', 'luis.fernandez@example.com');
INSERT INTO administrador (id_administrador, nombre_administrador, apellido_administrador, correo) VALUES (4, 'Marta', 'Lopez', 'marta.lopez@example.com');
INSERT INTO administrador (id_administrador, nombre_administrador, apellido_administrador, correo) VALUES (5, 'Pedro', 'Martinez', 'pedro.martinez@example.com');


INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, rol, id_ciudad) VALUES (1, 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', 1234567890, 3, 1);
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, rol, id_ciudad) VALUES (2, 'Laura', 'Vargas', 'laura.vargas@example.com', 9876543210, 2, 2);
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, rol, id_ciudad) VALUES (3, 'Jose', 'Ramirez', 'jose.ramirez@example.com', 1122334455, 1, 3);
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, rol, id_ciudad) VALUES (4, 'Ana', 'Martinez', 'ana.martinez@example.com', 5566778899, 4, 4);
INSERT INTO cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, rol, id_ciudad) VALUES (5, 'Elena', 'González', 'elena.gonzalez@example.com', 9988776655, 5, 5);


INSERT INTO antiguedades (id_antiguedad, id_categoria, id_disponibilidad, origen, epoca, estado_conservacion, precio, descripcion, id_administrador) VALUES (1, 1, 1, 'España', 'Siglo XVIII', 'Excelente', 1500.00, 'Sillon antiguo de madera', 1);
INSERT INTO antiguedades (id_antiguedad, id_categoria, id_disponibilidad, origen, epoca, estado_conservacion, precio, descripcion, id_administrador) VALUES (2, 2, 1, 'Francia', 'Siglo XIX', 'Bueno', 3000.00, 'Cuadro de pintor famoso', 2);
INSERT INTO antiguedades (id_antiguedad, id_categoria, id_disponibilidad, origen, epoca, estado_conservacion, precio, descripcion, id_administrador) VALUES (3, 3, 1, 'Italia', 'Renacimiento', 'Muy bueno', 5000.00, 'Anillo de oro antiguo', 3);
INSERT INTO antiguedades (id_antiguedad, id_categoria, id_disponibilidad, origen, epoca, estado_conservacion, precio, descripcion, id_administrador) VALUES (4, 4, 2, 'Alemania', 'Barroco', 'Excelente', 2000.00, 'Reloj de bolsillo antiguo', 4);
INSERT INTO antiguedades (id_antiguedad, id_categoria, id_disponibilidad, origen, epoca, estado_conservacion, precio, descripcion, id_administrador) VALUES (5, 5, 3, 'Reino Unido', 'Victorianos', 'Bueno', 750.00, 'Coleccion de sellos antiguos', 5);


INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (1, 1, 1, 1, '2018-10-01', 'Compra', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (6, 1, 1, 1, '2018-12-31', 'Compra', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (7, 1, 1, 1, '2018-08-05', 'Compra', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (2, 2, 2, 2, '2018-05-15', 'Venta', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (3, 3, 3, 3, '2018-07-20', 'Compra', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (4, 4, 4, 4, '2018-01-25', 'Venta', 1);
INSERT INTO transacciones (id_transaccion, id_antiguedad, id_cliente, id_administrador, fecha_transaccion, tipo_transaccion, cantidad) VALUES (5, 5, 5, 5, '2018-09-30', 'Compra', 1);

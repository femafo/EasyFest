Create database easyfest;
use easyfest;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    fecha_nacimiento DATE,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    dni VARCHAR(20),
    correo VARCHAR(100),
    contrasenya VARCHAR(100),
    esAdmin BOOLEAN,
    imagen blob
);

CREATE TABLE tarjetas (
    id_usuario INT,
    id_tarjeta INT PRIMARY KEY AUTO_INCREMENT,
    fecha_caducidad DATE,
    cvv INT,
    num_tarjeta VARCHAR(20),
    titular VARCHAR(100),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_tarjeta INT,
    id_usuario INT,
    id_producto INT,
    fecha_compra DATETIME,
    FOREIGN KEY (id_tarjeta) REFERENCES tarjetas(id_tarjeta),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE historial (
    fecha_compra DATETIME,
    id_pedido INT,
    id_usuario INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE producto (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE detalles_pedido (
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
INSERT INTO producto (nombre, descripcion, precio, fecha_inicio, fecha_fin) VALUES
('Coachella Valley Music and Arts Festival (California, EE. UU.)', 
'Paquete: Vuelo + Alojamiento en hoteles cercanos + Transporte al festival. Incluye: Vuelos de ida y vuelta a Los Ángeles o Palm Springs, estadía en hoteles de 3 a 5 estrellas, y transporte diario al festival.', 
1500.00, '2024-04-12', '2024-04-21'),

('Tomorrowland (Boom, Bélgica)', 
'Paquete: Vuelo + Alojamiento en DreamVille (camping oficial) o hoteles cercanos. Incluye: Vuelos de ida y vuelta a Bruselas, opciones de alojamiento que van desde tiendas de campaña hasta cabañas de lujo, y transporte al festival.', 
2000.00, '2024-07-19', '2024-07-28'),

('Glastonbury Festival (Pilton, Inglaterra)', 
'Paquete: Vuelo + Alojamiento en Glamping o en hoteles. Incluye: Vuelos de ida y vuelta a Londres o Bristol, opciones de glamping (camping de lujo) con todas las comodidades, y transporte al festival.', 
1800.00, '2024-06-26', '2024-06-30'),

('Rock in Rio (Río de Janeiro, Brasil)', 
'Paquete: Vuelo + Alojamiento en hoteles en Copacabana o Ipanema. Incluye: Vuelos de ida y vuelta a Río de Janeiro, estadía en hoteles de 3 a 5 estrellas en zonas populares como Copacabana o Ipanema, y transporte al festival.', 
1700.00, '2024-09-27', '2024-10-06'),

('Primavera Sound (Barcelona, España)', 
'Paquete: Vuelo + Alojamiento en hoteles céntricos. Incluye: Vuelos de ida y vuelta a Barcelona, estadía en hoteles céntricos, y transporte al festival (en algunos casos, puede estar incluido o se puede gestionar fácilmente por la ubicación céntrica).', 
1400.00, '2024-05-30', '2024-06-03'),

('Sziget Festival (Budapest, Hungría)', 
'Paquete: Vuelo + Alojamiento en la isla del festival o en hoteles en la ciudad. Incluye: Vuelos de ida y vuelta a Budapest, opciones de alojamiento en el camping oficial del festival o en hoteles en el centro de Budapest, y transporte al festival.', 
1600.00, '2024-08-07', '2024-08-13'),

('Ultra Music Festival (Miami, EE. UU.)', 
'Paquete: Vuelo + Alojamiento en hoteles en el centro de Miami. Incluye: Vuelos de ida y vuelta a Miami, estadía en hoteles cercanos al Bayfront Park, y transporte al festival (en muchos casos, los hoteles están a una corta distancia a pie).', 
1500.00, '2024-03-22', '2024-03-24'),

('Fuji Rock Festival (Naeba, Japón)', 
'Paquete: Vuelo + Alojamiento en hoteles o alojamientos en la estación de esquí de Naeba. Incluye: Vuelos de ida y vuelta a Tokio o Niigata, estadía en hoteles en la estación de esquí de Naeba o en las cercanías, y transporte al festival.', 
1900.00, '2024-07-26', '2024-07-28');

INSERT INTO usuario (fecha_nacimiento, nombre, apellidos, dni, correo, contrasenya, esAdmin) VALUES
('1990-01-15', 'Carlos', 'Garcia', '12345678A', 'carlos.garcia@example.com', 'password1', FALSE),
('1985-05-23', 'Maria', 'Lopez', '87654321B', 'maria.lopez@example.com', 'password2', FALSE),
('1992-08-30', 'Juan', 'Martinez', '45678901C', 'juan.martinez@example.com', 'password3', TRUE),
('1988-12-05', 'Laura', 'Gonzalez', '23456789D', 'laura.gonzalez@example.com', 'password4', FALSE),
('1995-07-19', 'David', 'Hernandez', '34567890E', 'david.hernandez@example.com', 'password5', FALSE);

INSERT INTO tarjetas (id_usuario, fecha_caducidad, cvv, num_tarjeta, titular) VALUES
(1, '2025-01-15', 123, '1111-2222-3333-4444', 'Carlos Garcia'),
(1, '2026-02-16', 456, '5555-6666-7777-8888', 'Carlos Garcia'),
(2, '2025-03-17', 789, '9999-0000-1111-2222', 'Maria Lopez'),
(2, '2026-04-18', 321, '3333-4444-5555-6666', 'Maria Lopez'),
(3, '2025-05-19', 654, '7777-8888-9999-0000', 'Juan Martinez'),
(3, '2026-06-20', 987, '1111-2222-3333-4444', 'Juan Martinez'),
(4, '2025-07-21', 123, '5555-6666-7777-8888', 'Laura Gonzalez'),
(4, '2026-08-22', 456, '9999-0000-1111-2222', 'Laura Gonzalez'),
(5, '2025-09-23', 789, '3333-4444-5555-6666', 'David Hernandez'),
(5, '2026-10-24', 321, '7777-8888-9999-0000', 'David Hernandez');

ALTER TABLE producto
ADD COLUMN id_admin INT,
ADD CONSTRAINT fk_admin FOREIGN KEY (id_admin) REFERENCES usuario(id_usuario);

UPDATE producto SET id_admin = 3;

DELIMITER //
CREATE TRIGGER after_pedido_insert
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
    INSERT INTO detalles_pedido (id_pedido, id_producto, cantidad)
    VALUES (NEW.id_pedido, NEW.id_producto, 1); -- Asumiendo una cantidad fija de 1 por defecto

    INSERT INTO historial (fecha_compra, id_pedido, id_usuario)
    VALUES (NEW.fecha_compra, NEW.id_pedido, NEW.id_usuario);
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE eliminar_usuario(IN p_id_usuario INT)
BEGIN
    DELETE FROM pedidos WHERE id_usuario = p_id_usuario;

    DELETE FROM tarjetas WHERE id_usuario = p_id_usuario;

    DELETE FROM usuario WHERE id_usuario = p_id_usuario;
END;
//
DELIMITER ;




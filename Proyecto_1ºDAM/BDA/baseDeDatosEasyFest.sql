CREATE DATABASE IF NOT EXISTS easyfest;

USE easyfest;

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(100),
    dni VARCHAR(20),
    correo VARCHAR(100),
    contraseña VARCHAR(100),
    fecha_nacimiento DATE
);

CREATE TABLE IF NOT EXISTS producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE IF NOT EXISTS tarjetas (
    id_tarjeta INT AUTO_INCREMENT PRIMARY KEY,
    num_tarjeta VARCHAR(20),
    titular VARCHAR(150),
    id_usuario INT,
    fecha_caducidad DATE,
    cvv VARCHAR(10),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS carrito (
    id_producto INT,
    id_usuario INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_tarjeta INT,
    id_usuario INT,
    FOREIGN KEY (id_tarjeta) REFERENCES tarjetas(id_tarjeta),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS historial (
    id_usuario INT,
    id_compra INT,
    fecha_compra DATETIME,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_compra) REFERENCES compra(id_compra)
);


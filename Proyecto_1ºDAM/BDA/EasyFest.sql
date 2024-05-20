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
    esAdmin BOOLEAN
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
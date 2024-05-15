CREATE TABLE IF NOT EXISTS administrador (
    id_administrador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50),
    nombre VARCHAR(50),
    apellidos VARCHAR(100),
    correo VARCHAR(100),
    contraseña VARCHAR(100)
);
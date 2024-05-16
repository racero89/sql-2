/* Relación tipo 1:1 */
-- PASO 1
-- Tu código aquí

create table usuarios( 
id_ususario int auto_increment PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
edad INT);

INSERT INTO usuarios (nombre, apellidos, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

SELECT * FROM usuarios;


-- PASO 2
-- Tu código aquí

CREATE TABLE roles(
id_rol INT AUTO_INCREMENT PRIMARY KEY,
nombre_rol VARCHAR(50) NOT NULL);

INSERT INTO roles (nombre_rol) VALUES
('Bronce'),
('Plata'),
('Oro'),
('Platino');

SELECT * FROM roles;


-- PASO 3
-- Tu código aquí

ALTER table usuarios
add column id_rol int;

ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

-- PASO 4
-- Tu código aquí

CREATE TABLE usuarios_categoria(
id_usuario_categoria INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT,
id_categoria INT,
 FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
 FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);



/* Relación tipo 1:N */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí


-- PASO 4
-- Tu código aquí


CREATE TABLE categoria(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nombre_categoria VARCHAR(100) NOT NULL
);


INSERT INTO categoria (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');


SELECT * FROM categoria;

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí

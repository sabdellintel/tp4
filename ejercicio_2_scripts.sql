
-- Creación de las tablas 
CREATE TABLE HABITACION (
    numero_habitacion INT PRIMARY KEY,
    piso INT,
    cantidad_camas INT
);

CREATE TABLE RESERVA (
    numero_reserva INT PRIMARY KEY,
    desde DATE,
    hasta DATE
);

CREATE TABLE HUESPED (
    dni INT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15)
);

-- Tablas para relaciones
CREATE TABLE RESERVA_HABITACION (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_reserva INT,
    numero_habitacion INT,
    FOREIGN KEY (numero_reserva) REFERENCES RESERVA(numero_reserva),
    FOREIGN KEY (numero_habitacion) REFERENCES HABITACION(numero_habitacion)
);

CREATE TABLE RESERVA_HUESPED (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_reserva INT,
    dni_huesped INT,
    FOREIGN KEY (numero_reserva) REFERENCES RESERVA(numero_reserva),
    FOREIGN KEY (dni_huesped) REFERENCES HUESPED(dni)
);

-- Inserción de datos 
INSERT INTO HABITACION (numero_habitacion, piso, cantidad_camas) VALUES
(101, 1, 2),
(102, 1, 1),
(201, 2, 3);

INSERT INTO RESERVA (numero_reserva, desde, hasta) VALUES
(1, '2024-12-01', '2024-12-05'),
(2, '2024-12-10', '2024-12-12');

INSERT INTO HUESPED (dni, nombre, telefono) VALUES
(12345678, 'Juan Perez', '1234-5678'),
(87654321, 'Maria Lopez', '8765-4321');

INSERT INTO RESERVA_HABITACION (numero_reserva, numero_habitacion) VALUES
(1, 101),
(2, 102);

INSERT INTO RESERVA_HUESPED (numero_reserva, dni_huesped) VALUES
(1, 12345678),
(2, 87654321);


-- Creación de la base de datos
CREATE DATABASE clinica;
USE clinica;

-- Creación de las tablas
CREATE TABLE medico (
    matricula INT PRIMARY KEY,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    especialidad VARCHAR(20),
    observaciones TEXT
);

CREATE TABLE paciente (
    nss BIGINT PRIMARY KEY,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    domicilio VARCHAR(50),
    codigo_postal SMALLINT,
    telefono VARCHAR(15),
    nro_historial_clinico INT,
    observaciones TEXT
);

CREATE TABLE ingreso (
    id_ingreso INT PRIMARY KEY,
    fecha_ingreso DATE,
    nro_habitacion SMALLINT,
    nro_cama SMALLINT,
    observaciones TEXT,
    nro_historial_paciente INT,
    matricula_medico INT,
    FOREIGN KEY (nro_historial_paciente) REFERENCES paciente(nro_historial_clinico),
    FOREIGN KEY (matricula_medico) REFERENCES medico(matricula)
);

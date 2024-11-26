
-- Inserción de datos en la tabla medico
INSERT INTO medico (matricula, nombre, apellido, especialidad, observaciones) VALUES
(155, 'Alfredo', 'Gutierrez', 'Medicina Familiar', 'No atiende PAMI'),
(221, 'Luisa', 'Foseca', 'Cardiología', NULL),
(226, 'Frodo', 'Bolson', 'Pediatría', 'Solamente turno tarde'),
(332, 'Jesus Maria', 'Prates', 'Cirugía', NULL),
(334, 'Gandalf', 'Meriadoc', 'Infectología', NULL),
(449, 'Ricardo', 'Puchini', 'Medicina Familiar', 'medico clinico general'),
(645, 'Cacho', 'Villa', 'Oftalmología', NULL),
(733, 'Tatiana', 'Brandigamo', 'Pediatría', NULL),
(774, 'Alfonso', 'Chamorro', 'Cardiología', NULL),
(888, 'Pedro Pablo', 'Cichanowski', 'Urología', 'actualmente con licencia por covid');

-- Inserción de datos en la tabla paciente
INSERT INTO paciente (nss, nombre, apellido, domicilio, codigo_postal, telefono, nro_historial_clinico, observaciones) VALUES
(32197, 'Aewin', 'Rohan', 'Valinor 1001', 2366, '3274-232336', 675, NULL),
(971649, 'Glorfindel', 'Arda', 'Terminal esquina Avenida', 3360, '3755-447031', 778, 'realizar PCR'),
(316619, 'Karen Sophia', 'Burgin', 'Primeros Colonos y Junin', 3360, '3755-988877', 1236, NULL),
(3648, 'Gimli', 'Moria', 'Juan de Orquideas 335', 3364, '3755-866545', 1488, NULL),
(87164, 'Legolas', 'Bosque Negro', 'Krause y Villaveija', 3514, '3971-544444', 1498, 'historial de cardiopatias'),
(254651, 'Elrond', 'Rivendell', 'Balneario Campo Grande', 3360, '3755-555555', 4112, NULL),
(369844, 'Galadriel', 'Lorien', 'Barerio 170', 3360, NULL, 4551, NULL),
(44946, 'Josefina', 'Perez', 'Calle 201', 3367, '3755-587912', 1342, NULL),
(654165, 'Jose', 'Vigliano', 'Arrayanes 1205', 3360, '3755-589174', 1932, NULL);

-- Inserción de datos en la tabla ingreso
INSERT INTO ingreso (id_ingreso, fecha_ingreso, nro_habitacion, nro_cama, observaciones, nro_historial_paciente, matricula_medico) VALUES
(1, '2021-11-01', 1, 2, NULL, 1884, 449),
(2, '2021-11-02', 1, 1, NULL, 1488, 226),
(3, '2021-11-02', 2, 4, 'Falta completar carnet de vacunacion', 1498, 733),
(5, '2021-11-05', 4, 7, NULL, 4112, 645),
(6, '2021-11-15', 5, 9, NULL, 1236, 226),
(8, '2021-12-09', 3, 6, NULL, 778, 888),
(9, '2021-12-12', 8, 6, 'Solicitar electrocardiograma', 4112, 332),
(10, '2021-12-11', 2, 4, NULL, 3212, 774),
(11, '2021-12-18', 2, 3, NULL, 1488, 155),
(12, '2021-12-22', 5, 10, NULL, 1236, 645),
(13, '2022-01-04', 9, 17, NULL, 3212, 155),
(14, '2022-01-15', 4, 8, NULL, 4112, 226),
(15, '2022-01-24', 2, 3, NULL, 1488, 888),
(16, '2022-02-01', 8, 15, NULL, 3212, 334),
(17, '2022-02-14', 1, 2, NULL, 1884, 449),
(18, '2022-02-15', 7, 13, NULL, 4112, 888),
(19, '2022-03-02', 3, 5, NULL, 675, 155),
(20, '2022-03-07', 8, 12, NULL, 4551, 334),
(21, '2022-03-13', 3, 6, NULL, 1498, 645),
(22, '2022-03-16', 5, 9, NULL, 675, 774),
(23, '2022-03-19', 5, 9, NULL, 4112, 774),
(24, '2022-03-22', 6, 11, 'Cuenta con servicio integral de rehabilitacion', 1498, 645),
(25, '2022-03-25', 1, 1, NULL, 4112, 155),
(26, '2022-03-29', 3, 6, NULL, 1236, 226),
(27, '2022-03-30', 9, 17, NULL, 4112, 155),
(28, '2022-04-05', 6, 11, 'Internacion por deshidratacion', 1488, 774),
(29, '2022-04-07', 7, 13, NULL, 4551, 774);

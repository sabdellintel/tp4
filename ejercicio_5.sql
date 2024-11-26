
-- a) Agregar un nuevo paciente
INSERT INTO paciente (nss, nombre, apellido, domicilio, codigo_postal, telefono, nro_historial_clinico, observaciones)
VALUES (22558, 'Antonio', 'Magallanes', 'Dos Pindo 260', 3640, NULL, 1932, NULL);

-- b) Actualizar el número de teléfono del paciente agregado
UPDATE paciente
SET telefono = '3754-589174'
WHERE nss = 22558;

-- c) Listar pacientes con observaciones
SELECT 
    CONCAT(apellido, ', ', nombre) AS paciente,
    observaciones AS observacion_registrada
FROM paciente
WHERE observaciones IS NOT NULL;

-- d) Listar pacientes con la especialidad del médico en los ingresos
SELECT 
    CONCAT(p.apellido, ', ', p.nombre) AS paciente,
    m.especialidad
FROM ingreso i
JOIN paciente p ON i.nro_historial_paciente = p.nro_historial_clinico
JOIN medico m ON i.matricula_medico = m.matricula;

-- e) Eliminar médicos no solicitados por pacientes
DELETE FROM medico
WHERE matricula NOT IN (SELECT DISTINCT matricula_medico FROM ingreso);

-- f) Obtener tabla con número de cama y cantidad de usos
CREATE TABLE usos AS
SELECT 
    nro_cama,
    COUNT(*) AS cantidad_usos
FROM ingreso
GROUP BY nro_cama
ORDER BY cantidad_usos DESC;

-- g) Listar pacientes con al menos 4 ingresos
SELECT 
    CONCAT(p.apellido, ', ', p.nombre) AS paciente,
    COUNT(i.id_ingreso) AS cantidad_ingresos
FROM ingreso i
JOIN paciente p ON i.nro_historial_paciente = p.nro_historial_clinico
GROUP BY p.nss, p.nombre, p.apellido
HAVING COUNT(i.id_ingreso) >= 4
ORDER BY cantidad_ingresos DESC;

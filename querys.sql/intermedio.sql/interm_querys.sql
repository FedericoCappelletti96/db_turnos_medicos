/* Mostrar el nombre del paciente y del médico para cada turno.*/
SELECT p.first_name AS nombre_paciente,
  p.last_name AS apellido_paciente,
  m.first_name AS nombre_medico,
  m.last_name AS apellido_medico,
  t.Id_turno FROM turnos t
JOIN pacientes p ON t.Id_paciente = p.Id_paciente
JOIN medicos m ON t.Id_medico = m.Id_medico;
/*  Listar los turnos programados para una fecha específica*/
SELECT * FROM TURNOS
WHERE date_time LIKE '2025-06-14 16:00:00';
/*  Mostrar la cantidad de turnos por cada médico.*/
SELECT m.first_name,m.last_name, count(*) as cantidad_de_turnos FROM Medicos m
JOIN turnos t ON m.Id_medico = t.Id_medico
GROUP BY m.Id_medico, m.first_name, m.last_name;
/* Mostrar todos los médicos que atienden en el piso 2.*/
SELECT DISTINCT m.first_name,m.last_name, c.floor FROM Medicos m
JOIN turnos t ON m.Id_medico = t.Id_medico
JOIN consultorios c ON t.Id_office = c.Id_office
WHERE c.floor = 2;
/*Listar los pacientes que tuvieron un turno cancelado.*/
SELECT p.Id_paciente, t.shift_status FROM pacientes p
JOIN turnos t ON p.Id_paciente = t.Id_paciente
WHERE t.shift_status = 'cancelado';
/* Mostrar la cantidad de turnos por estado (programado, confirmado, cancelado).*/
SELECT count(CASE WHEN shift_status = 'programado' THEN 1 END)as cant_programado,
		count(CASE WHEN shift_status = 'confirmado' THEN 1 END)as cant_confirmado,
        count(CASE WHEN shift_status = 'cancelado' THEN 1 END)as cant_cancelado
FROM turnos;
/*Listar los pacientes que tienen más de un turno registrado.*/
SELECT p.Id_paciente,COUNT(t.Id_turno) AS cantidad_turnos FROM pacientes p
JOIN turnos t ON p.Id_paciente = t.Id_paciente
GROUP BY t.Id_paciente
HAVING count(t.Id_paciente) >1;
/*Inserte nuevo datos asi se almacena los nuevos turnos al historial*/
/* Nuevos pacientes*/
INSERT INTO Pacientes (first_name, last_name, DNI, birthdate, email, tel) VALUES
('Martín', 'García', 11223344, '1982-09-21', 'martin.garcia@mail.com', 1222333444),
('Valentina', 'Ortiz', 22334455, '1991-12-10', 'valentina.ortiz@mail.com', 1333444555),
('Jorge', 'Ramírez', 33445566, '1976-03-15', 'jorge.ramirez@mail.com', 1444555666),
('Sabrina', 'Fernández', 44556677, '1987-07-04', 'sabrina.fernandez@mail.com', 1555666777),
('Agustín', 'López', 55667788, '1994-05-29', 'agustin.lopez@mail.com', 1666777888);

/* Nuevos turnos para estos pacientes y médicos existentes*/
INSERT INTO Turnos (Id_paciente, Id_medico, Id_office, date_time, shift_status) VALUES
(11, 3, 2, '2025-06-20 09:00:00', 'programado'),
(12, 5, 4, '2025-06-21 10:30:00', 'confirmado'),
(13, 2, 1, '2025-06-22 14:00:00', 'programado'),
(14, 6, 5, '2025-06-23 11:15:00', 'cancelado'),
(15, 1, 3, '2025-06-24 16:00:00', 'programado');

/*. Mostrar los turnos y su historial correspondiente (unir Turnos con historial_pacientes).*/
SELECT 
	t.Id_turno,
    t.Id_paciente,
    t.Id_medico,
    t.Id_office,
    t.date_time,
    t.shift_status,
    h.id AS historial_id,
    h.fecha_creacion
FROM Turnos t
LEFT JOIN historial_pacientes h ON t.Id_turno = h.Id_turno;
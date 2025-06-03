/*Mostrar todos los pacientes registrados.*/
SELECT *FROM pacientes;
/* Listar los turnos con su fecha y estado.*/
SELECT Id_turno, Id_paciente,Id_medico,date_time,shift_status FROM turnos;
/* Obtener el nombre y especialidad de todos los médicos.*/
SELECT first_name, last_name, medical_specialty FROM medicos;
/*  Listar los consultorios disponibles (número y piso).*/
SELECT * from consultorios;
/*Mostrar todos los turnos confirmados*/
SELECT * FROM Turnos 
WHERE shift_status = 'confirmado';
/*Buscar al paciente con un DNI específico. */
SELECT * FROM Pacientes
WHERE DNI = '12345678';
/*  Contar cuántos pacientes hay registrados.*/
SELECT count(*) as pacientes_registrados FROM pacientes;
/* Ordenar los turnos por fecha de manera ascendente.*/
SELECT * FROM turnos
ORDER BY date_time ASC;
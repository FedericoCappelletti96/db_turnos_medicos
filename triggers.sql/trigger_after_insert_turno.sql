DELIMITER //
CREATE TRIGGER after_insert_turno
AFTER INSERT ON turnos
FOR EACH ROW BEGIN
INSERT INTO historial_pacientes (Id_turno, Id_paciente, Id_medico, Id_office, fecha_creacion)
VALUES (NEW.Id_turno, NEW.Id_paciente, NEW.Id_medico, NEW.Id_office, NOW());
END;
//

DELIMITER ;

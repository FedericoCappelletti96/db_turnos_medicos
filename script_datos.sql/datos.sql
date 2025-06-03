-- Desactivamos las restricciones temporales
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Turnos;
TRUNCATE TABLE Pacientes;
TRUNCATE TABLE Medicos;

-- Volvemos a activarlas
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Pacientes (first_name, last_name, DNI, birthdate, email, tel) VALUES
('Juan', 'Pérez', 12345678, '1985-05-15', 'juan.perez@mail.com', 1123456789),
('María', 'Gómez', 23456789, '1990-11-30', 'maria.gomez@mail.com', 1134567890),
('Luis', 'Martínez', 34567890, '1978-04-22', 'luis.martinez@mail.com', 1145678901),
('Ana', 'López', 45678901, '1995-03-18', 'ana.lopez@mail.com', 1156789012),
('Carlos', 'Díaz', 56789012, '2000-07-09', 'carlos.diaz@mail.com', 1167890123),
('Sofía', 'Ramírez', 67890123, '1983-02-28', 'sofia.ramirez@mail.com', 1178901234),
('Pedro', 'Fernández', 78901234, '1975-12-12', 'pedro.fernandez@mail.com', 1189012345),
('Laura', 'Torres', 89012345, '1988-10-05', 'laura.torres@mail.com', 1190123456),
('Diego', 'Sánchez', 90123456, '1993-08-21', 'diego.sanchez@mail.com', 1201234567),
('Lucía', 'Morales', 10234567, '1980-06-14', 'lucia.morales@mail.com', 1212345678);

INSERT INTO Medicos (first_name, last_name, medical_specialty, Professional_registration, email) VALUES
('Ricardo', 'Alvarez', 'Cardiología', 'REG200', 'ricardo.alvarez@hospital.com'),
('Elena', 'Silva', 'Dermatología', 'REG201', 'elena.silva@hospital.com'),
('Fernando', 'Suárez', 'Pediatría', 'REG202', 'fernando.suarez@hospital.com'),
('Isabel', 'Molina', 'Ginecología', 'REG203', 'isabel.molina@hospital.com'),
('Héctor', 'Navarro', 'Neurología', 'REG204', 'hector.navarro@hospital.com'),
('Verónica', 'Delgado', 'Oftalmología', 'REG205', 'veronica.delgado@hospital.com'),
('Alberto', 'Cruz', 'Traumatología', 'REG206', 'alberto.cruz@hospital.com'),
('Cecilia', 'Rivas', 'Endocrinología', 'REG207', 'cecilia.rivas@hospital.com'),
('Mario', 'Herrera', 'Psiquiatría', 'REG208', 'mario.herrera@hospital.com'),
('Patricia', 'Reyes', 'Oncología', 'REG209', 'patricia.reyes@hospital.com');

INSERT INTO Consultorios (num_office, floor) VALUES
(101, 1),
(102, 1),
(201, 2),
(202, 2),
(301, 3),
(302, 3),
(401, 4),
(402, 4),
(501, 5),
(502, 5);

INSERT INTO Turnos (Id_paciente, Id_medico, Id_office, date_time, shift_status) VALUES
(1, 1, 1, '2025-06-10 10:00:00', 'programado'),
(2, 2, 2, '2025-06-10 11:00:00', 'confirmado'),
(3, 3, 3, '2025-06-11 09:30:00', 'cancelado'),
(4, 4, 4, '2025-06-11 10:30:00', 'programado'),
(5, 5, 5, '2025-06-12 08:00:00', 'confirmado'),
(6, 6, 6, '2025-06-12 13:00:00', 'programado'),
(7, 7, 7, '2025-06-13 15:00:00', 'confirmado'),
(8, 8, 8, '2025-06-14 12:00:00', 'programado'),
(9, 9, 9, '2025-06-14 16:00:00', 'programado'),
(10, 10, 10, '2025-06-15 09:00:00', 'cancelado');




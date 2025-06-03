DROP TABLE IF EXISTS Turnos;
DROP TABLE IF EXISTS Medicos;
DROP TABLE IF EXISTS Consultorios;
DROP TABLE IF EXISTS Pacientes;

CREATE TABLE Pacientes (
    Id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    DNI INT NOT NULL UNIQUE,
    birthdate DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    tel BIGINT
);
CREATE TABLE Medicos (
    Id_medico INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    medical_specialty VARCHAR(100) NOT NULL,
    Professional_registration VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Consultorios (
    Id_office INT AUTO_INCREMENT NOT NULL,
    num_office INT,
    floor INT,
    PRIMARY KEY (Id_office)
);
CREATE TABLE Turnos (
    Id_turno INT AUTO_INCREMENT PRIMARY KEY,
    Id_paciente INT NOT NULL,
    Id_medico INT NOT NULL,
    Id_office INT,
    date_time DATETIME NOT NULL,
    shift_status VARCHAR(45) NOT NULL,
    FOREIGN KEY (Id_paciente) REFERENCES Pacientes(Id_paciente),
    FOREIGN KEY (Id_medico) REFERENCES Medicos(Id_medico),
    FOREIGN KEY (Id_office) REFERENCES Consultorios(Id_office),
    CHECK (shift_status IN ('programado', 'confirmado', 'cancelado'))
);
CREATE TABLE historial_pacientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  Id_turno INT,
  Id_paciente INT,
  Id_medico INT,
  Id_office INT,
  fecha_creacion DATETIME,
  FOREIGN KEY (Id_turno) REFERENCES Turnos(Id_turno),
  FOREIGN KEY (Id_paciente) REFERENCES Pacientes(Id_paciente),
  FOREIGN KEY (Id_medico) REFERENCES Medicos(Id_medico),
  FOREIGN KEY (Id_office) REFERENCES Consultorios(Id_office)
);



# db_turnos_medicos
📋 Descripción del Proyecto
Este proyecto consiste en el diseño e implementación de una base de datos relacional para gestionar turnos médicos. El sistema contempla pacientes, médicos, consultorios y un historial de turnos, utilizando buenas prácticas de modelado, integridad referencial y automatización con triggers.
## 📚 Contenido del Proyecto

- `estructura.sql`: Script de creación de tablas.
- `datos_iniciales.sql`: Inserción de pacientes, médicos, consultorios y turnos.
- `consultas.sql`: Consultas de nivel principiante e intermedio.
- `trigger_historial.sql`: Trigger para guardar turnos en el historial.
- `README.md`: Descripción del proyecto.

---

## 🛠️ Tecnologías utilizadas

- **MySQL**
- SQL DDL y DML
- Triggers y relaciones foráneas
- Consultas JOIN, GROUP BY, COUNT, etc.

---

## 🧪 Consultas SQL Implementadas

### Nivel Principiante
1. Mostrar todos los pacientes registrados.
2. Listar los turnos con su fecha y estado.
3. Obtener el nombre y especialidad de todos los médicos.
4. Listar los consultorios disponibles (número y piso).
5. Mostrar todos los turnos confirmados.
6. Buscar al paciente con un DNI específico.
7. Contar cuántos pacientes hay registrados.
8. Ordenar los turnos por fecha de manera ascendente.

### Nivel Intermedio
1. Mostrar el nombre del paciente y del médico para cada turno.
2. Listar los turnos programados para una fecha específica.
3. Mostrar la cantidad de turnos por cada médico.
4. Mostrar todos los médicos que atienden en el piso 2.
5. Listar los pacientes que tuvieron un turno cancelado.
6. Mostrar la cantidad de turnos por estado.
7. Listar los pacientes con más de un turno.
8. Unir los turnos con su historial correspondiente.

---

## 🔁 Trigger incluido

El trigger `guardar_en_historial` se ejecuta automáticamente al insertar un nuevo turno y guarda una copia en la tabla `historial_pacientes`.


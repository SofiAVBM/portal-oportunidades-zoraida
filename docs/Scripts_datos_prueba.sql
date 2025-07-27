-- Tabla Usuario
INSERT INTO Usuario (numero_documento, correo, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, lugar_residencia, direccion, telefono, password, rol, consentimiento_informado)
VALUES
('1001', 'ana.perez@example.com', 'CC', 'Ana', 'Lucía', 'Pérez', 'Gómez', '2000-05-12', 'FEMENINO', 'BOGOTA', 'Calle 123 #45-67', '3101111111', 'hash1', 'EXPLORADOR', TRUE),
('1002', 'carlos.martinez@example.com', 'CC', 'Carlos', 'Andrés', 'Martínez', 'Ruiz', '1998-08-21', 'MASCULINO', 'FUNZA', 'Carrera 10 #20-30', '3102222222', 'hash2', 'EDITOR', TRUE),
('1003', 'laura.rojas@example.com', 'TI', 'Laura', NULL, 'Rojas', 'Salazar', '2003-11-10', 'FEMENINO', 'MOSQUERA', 'Av 30 #15-05', '3103333333', 'hash3', 'ORIENTADOR', TRUE),
('1004', 'diego.fernandez@example.com', 'CE', 'Diego', 'Alberto', 'Fernández', 'Pardo', '1995-04-02', 'MASCULINO', 'BOJACA', 'Calle 50 #25-40', '3104444444', 'hash4', 'ADMIN', TRUE),
('1005', 'sofia.mendez@example.com', 'CC', 'Sofía', 'Camila', 'Méndez', 'Ortiz', '2001-07-17', 'FEMENINO', 'ZIPACON', 'Calle 80 #12-34', '3105555555', 'hash5', 'EXPLORADOR', TRUE);

-- Tabla Institucion
INSERT INTO Institucion (nombre)
VALUES
('Universidad de Cundinamarca'),
('SENA'),
('Cámara de Comercio de Bogotá'),
('Fundación Juventud Activa'),
('Politécnico Grancolombiano');

-- Tabla Oferta (IDs 1-5)
INSERT INTO Oferta (titulo, imagen, descripcion, link, fecha_inicio, fecha_final, estado, tipo_oferta, lugar, institucion)
VALUES
('Desarrollador Backend Jr', NULL, 'Vacante para desarrollador junior en empresa fintech.', 'http://empleo1.com', '2025-07-01', '2025-12-31', 'ACTIVA', 'EMPLEO', 'BOGOTA', 1),
('Práctica en Diseño UX', NULL, 'Oportunidad para estudiantes de diseño.', 'http://practica1.com', '2025-07-15', NULL, 'ACTIVA', 'PRACTICAS', 'FUNZA', 2),
('Curso de Python Avanzado', NULL, 'Curso intensivo online de Python.', 'http://curso1.com', '2025-08-01', '2025-08-31', 'ACTIVA', 'CURSOS', 'VIRTUAL', 3),
('Beca de Tecnología', NULL, 'Beca completa para programa de tecnología.', 'http://beca1.com', '2025-07-20', '2026-07-20', 'ACTIVA', 'BECAS', 'BOGOTA', 4),
('Diplomado en Educación Digital', NULL, 'Programa especializado en educación digital.', 'http://educacion1.com', '2025-09-01', '2026-02-01', 'INACTIVA', 'EDUCACION', 'MOSQUERA', 5);

-- Ofertas hijas
INSERT INTO OfertaEmpleo (id, rango_salarial, tipo_contrato, aux_transporte, aux_alimentos)
VALUES (1, '2M - 3M COP', 'FIJO', TRUE, TRUE);

INSERT INTO OfertaPractica (id, salario, auxilio, contrato_aprendizaje, duracion)
VALUES (2, TRUE, TRUE, TRUE, '6 meses');

INSERT INTO OfertaCurso (id, modalidad, duracion, duracion_virtual, duracion_presencial)
VALUES (3, 'VIRTUAL', '40 horas', '40 horas', NULL);

INSERT INTO OfertaBeca (id, aux_transporte, aux_alimentacion, tipo_formacion)
VALUES (4, TRUE, TRUE, 'TECNOLOGO');

-- Tabla Seguimiento
INSERT INTO Seguimiento (fecha, estado, seguimiento_activo, usuario_id, oferta_id)
VALUES
('2025-07-20', 'EN_PROCESO', TRUE, 1, 1),
('2025-07-21', 'PENDIENTE', TRUE, 2, 2),
('2025-07-22', 'FINALIZADO', FALSE, 3, 3),
('2025-07-23', 'CANCELADO', FALSE, 4, 4),
('2025-07-24', 'EN_PROCESO', TRUE, 5, 1);

-- Tabla Novedad
INSERT INTO Novedad (fecha, descripcion, creado_por, seguimiento_id)
VALUES
('2025-07-21', 'Usuario completó el registro de la oferta.', 1, 1),
('2025-07-22', 'Se asignó orientador al seguimiento.', 2, 2),
('2025-07-23', 'Se detectaron inconsistencias en los datos del usuario.', 3, 3),
('2025-07-24', 'Oferta cancelada por la institución.', 4, 4),
('2025-07-25', 'Usuario solicitó prórroga en el seguimiento.', 5, 5);

-- Tabla Log
INSERT INTO Log (evento, usuario_id, oferta_id)
VALUES
('INICIO_SESION', 1, NULL),
('DETALLE', 2, 1),
('REDIRECCION', 3, 3),
('INICIO_SESION', 4, 4),
('DETALLE', 5, 2);

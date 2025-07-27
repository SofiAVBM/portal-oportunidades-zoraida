
-- Tabla Usuario
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_documento VARCHAR(50) UNIQUE,
    correo VARCHAR(100) UNIQUE,
    tipo_documento ENUM('CC', 'TI', 'CE', 'PA', 'OTRO'),
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    fecha_nacimiento DATE,
    genero ENUM('FEMENINO', 'MASCULINO', 'NO_BINARIO', 'PREFIERE_NO_DECIRLO', 'OTRO'),
    lugar_residencia ENUM('MADRID', 'FUNZA', 'MOSQUERA', 'FACATATIVA', 'BOJACA', 'ZIPACON', 'EL_ROSAL', 'SUBACHOQUE', 'BOGOTA'),
    direccion VARCHAR(150),
    telefono VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    rol ENUM('ADMIN', 'EDITOR', 'ORIENTADOR', 'EXPLORADOR') NOT NULL,
    consentimiento_informado BOOLEAN NOT NULL
);

-- Tabla Institucion
CREATE TABLE Institucion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) UNIQUE NOT NULL
);

-- Tabla Oferta
CREATE TABLE Oferta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    imagen VARCHAR(255),
    descripcion TEXT NOT NULL,
    link VARCHAR(255),
    fecha_inicio DATE NOT NULL,
    fecha_final DATE,
    estado ENUM('ACTIVA', 'INACTIVA') NOT NULL,
    tipo_oferta ENUM('EMPLEO', 'PRACTICAS', 'CURSOS', 'BECAS', 'EDUCACION') NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    institucion INT NOT NULL,
    FOREIGN KEY (institucion) REFERENCES Institucion(id)
);

-- Tablas hijas de Oferta
CREATE TABLE OfertaEmpleo (
    id INT PRIMARY KEY,
    rango_salarial VARCHAR(50) NOT NULL,
    tipo_contrato ENUM('FIJO', 'INDEFINIDO', 'PRESTACION', 'APRENDIZAJE', 'OTRO') NOT NULL,
    aux_transporte BOOLEAN NOT NULL,
    aux_alimentos BOOLEAN NOT NULL,
    FOREIGN KEY (id) REFERENCES Oferta(id) ON DELETE CASCADE
);

CREATE TABLE OfertaPractica (
    id INT PRIMARY KEY,
    salario BOOLEAN NOT NULL,
    auxilio BOOLEAN NOT NULL,
    contrato_aprendizaje BOOLEAN NOT NULL,
    duracion VARCHAR(50) NOT NULL,
    FOREIGN KEY (id) REFERENCES Oferta(id) ON DELETE CASCADE
);

CREATE TABLE OfertaCurso (
    id INT PRIMARY KEY,
    modalidad ENUM('PRESENCIAL', 'VIRTUAL', 'HIBRIDA') NOT NULL,
    duracion VARCHAR(50) NOT NULL,
    duracion_virtual VARCHAR(50),
    duracion_presencial VARCHAR(50),
    FOREIGN KEY (id) REFERENCES Oferta(id) ON DELETE CASCADE
);

CREATE TABLE OfertaBeca (
    id INT PRIMARY KEY,
    aux_transporte BOOLEAN NOT NULL,
    aux_alimentacion BOOLEAN NOT NULL,
    tipo_formacion ENUM('TECNICO', 'TECNOLOGO', 'PROFESIONAL') NOT NULL,
    FOREIGN KEY (id) REFERENCES Oferta(id) ON DELETE CASCADE
);

-- Tabla Seguimiento
CREATE TABLE Seguimiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    estado ENUM('PENDIENTE', 'EN_PROCESO', 'FINALIZADO', 'CANCELADO') NOT NULL,
    seguimiento_activo BOOLEAN NOT NULL,
    usuario_id INT NOT NULL,
    oferta_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE,
    FOREIGN KEY (oferta_id) REFERENCES Oferta(id) ON DELETE SET NULL
);

-- Tabla Novedad
CREATE TABLE Novedad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    descripcion TEXT NOT NULL,
    creado_por INT NOT NULL,
    seguimiento_id INT NOT NULL,
    FOREIGN KEY (creado_por) REFERENCES Usuario(id),
    FOREIGN KEY (seguimiento_id) REFERENCES Seguimiento(id) ON DELETE CASCADE
);

-- Tabla Log
CREATE TABLE Log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento ENUM('INICIO_SESION', 'DETALLE', 'REDIRECCION') NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT,
    oferta_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE,
    FOREIGN KEY (oferta_id) REFERENCES Oferta(id) ON DELETE SET NULL
);



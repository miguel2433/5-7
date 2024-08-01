-- Tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(255) NOT NULL,
    rol VARCHAR(50),
    saldo DECIMAL(10,2) DEFAULT 0.00,
    moneda VARCHAR(50),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    ultimo_acceso DATETIME,
    estado VARCHAR(50)
);

-- Tabla Productos
CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    categoria VARCHAR(50),
    etiquetas VARCHAR(255)
);

-- Tabla Transacciones_Tradeo
CREATE TABLE Transacciones_Tradeo (
    id_transaccion INT PRIMARY KEY AUTO_INCREMENT,
    id_vendedor INT,
    id_comprador INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(50),
    FOREIGN KEY (id_vendedor) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_comprador) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Tabla Interacciones
CREATE TABLE Interacciones (
    id_interaccion INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario1 INT,
    id_usuario2 INT,
    id_tipo_interaccion INT,
    contenido TEXT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario1) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_usuario2) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_tipo_interaccion) REFERENCES Tipos_Interaccion(id_tipo_interaccion)
);

-- Tabla Tipos_Interaccion
CREATE TABLE Tipos_Interaccion (
    id_tipo_interaccion INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(50) NOT NULL
);

-- Tabla Movimientos_Billetera
CREATE TABLE Movimientos_Billetera (
    id_movimiento INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    monto DECIMAL(10,2) NOT NULL,
    id_tipo_movimiento INT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_tipo_movimiento) REFERENCES Tipos_Movimiento(id_tipo_movimiento)
);

-- Tabla Tipos_Movimiento
CREATE TABLE Tipos_Movimiento (
    id_tipo_movimiento INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(50) NOT NULL
);

-- Tabla Seguridad
CREATE TABLE Seguridad (
    id_seguridad INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_tipo_evento INT,
    descripcion TEXT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_tipo_evento) REFERENCES Tipos_Evento(id_tipo_evento)
);

-- Tabla Tipos_Evento
CREATE TABLE Tipos_Evento (
    id_tipo_evento INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(50) NOT NULL
);

-- Tabla Actividades
CREATE TABLE Actividades (
    id_actividad INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    actividad VARCHAR(255) NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
